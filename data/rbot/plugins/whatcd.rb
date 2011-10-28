#- vim:sw=2:et
#++
#
# :title: what.cd plugin for rbot
#
# Author:: Andrew Northall <andy.nth@gmail.com>
#
# Copyright:: (C) 2011 Andrew Northall
#
# License:: GPL v2
#
# Performs various what.cd functions

require 'rubygems'
require 'mechanize'
  
class WhatCDPlugin < Plugin
  
  Config.register Config::StringValue.new('whatcd.username',
  :default => "byeitical", :requires_restart => false,
  :desc => "What.CD username of the user to use to access the site.")

  Config.register Config::StringValue.new('whatcd.password',
  :default => "none", :requires_restart => false,
  :desc => "What.CD username of the user specified in whatcd.username.")
  
  def search_artist(m, params)
    artist = params[:artist]
    artist = artist.join(" ") if artist.class == Array
    a = Mechanize.new
    a.get('https://ssl.what.cd/login.php') do |page|
      logged_in = page.form_with(:action => 'login.php') do |f|
        f['username'] = @bot.config['whatcd.username']
        f['password'] = @bot.config['whatcd.password']
      end.click_button
      results = logged_in.form_with(:action => 'artist.php') do |f|
        f['artistname'] = artist
      end.click_button

      trailing = results.uri.to_s.split("https://ssl.what.cd/")[1]
      page = trailing.split("?")[0]
      if page == "artist.php"
        m.reply "#{artist}: http://ssl.what.cd/#{trailing} http://what.cd/#{trailing}"
      else
        m.reply "No direct match for #{artist}. #{@bot.nick} will be able to show non-direct match results in the future."
      end
    end
  end

  def find_user(m, params)
    user = params[:user]
    user = m.sourcenick if user.nil?
    a = Mechanize.new
    a.get('https://ssl.what.cd/login.php') do |page|
      logged_in = page.form_with(:action => 'login.php') do |f|
        f['username'] = @bot.config['whatcd.username']
        f['password'] = @bot.config['whatcd.password']
      end.click_button
      results = logged_in.form_with(:action => 'user.php') do |f|
        f['search'] = user
      end.click_button

      trailing = results.uri.to_s.split("https://ssl.what.cd/")[1]
      page = trailing.split("?")[0]
      if page == "user.php"
	uploaded, downloaded, uploadbytes, downloadbytes, userclass = nil, nil, nil, nil
	results.root.xpath("//ul[@class = 'stats nobullet']").each do
	  |li|
	  if li.text =~ /Uploaded: (.*) ([A-Z]{0,2})$/
	    uploaded = "#{$1} #{$2}"
	    if $2 == "TB"
	      uploadbytes = ($1.to_f) * 1099511627776
	    elsif $2 == "GB"
	      uploadbytes = ($1.to_f) * 1073741824
            end
	  end
	  if li.text =~ /Downloaded: (.*) ([A-Z]{0,2})$/
	    downloaded = "#{$1} #{$2}"
	    if $2 == "TB"
	      downloadbytes = ($1.to_f) * 1099511627776
	    elsif $2 == "GB"
	      downloadbytes = ($1.to_f) * 1073741824
            end
	  end
	  if li.text =~ /Class: (.*)$/
	    userclass = $1
	  end
	end
	user = results.root.xpath("//div[@class = 'thin']/h2")[0].text
	if uploaded == nil or downloaded == nil
	  if userclass == nil
            m.reply "#{user} |  http://ssl.what.cd/#{trailing} http://what.cd/#{trailing}"
	  else
	    m.reply "#{user} | #{userclass} | http://ssl.what.cd/#{trailing} http://what.cd/#{trailing}"
	  end
	else
	  ratio = (((uploadbytes / downloadbytes) * 100).round / 100.0)
	  buffer = ((uploadbytes - downloadbytes) / 1073741824)
	  m.reply "#{user} | #{userclass} | Up: #{uploaded} | Down: #{downloaded} | Ratio: #{ratio} | Buffer: #{buffer} GB | http://ssl.what.cd/#{trailing} http://what.cd/#{trailing}"
	end
      else
        m.reply "No direct match for #{user}. #{@bot.nick} will be able to show non-direct match results in the future."
      end
    end
  end
end

plugin = WhatCDPlugin.new
plugin.map 'artist *artist', :action => :search_artist, :thread => true
plugin.map 'whatuser [:user]', :action => :find_user, :thread => true
