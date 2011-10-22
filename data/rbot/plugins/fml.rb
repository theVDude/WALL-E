#-- vim:sw=2:et
#++
#
# :title: FML(FMyLife/Vie de merde) RBot Plugin
#
# Author:: apoc <apoc@sixserv.org>
#
# Copyright:: (C) 2009-2010 Matthias -apoc- Hecker
#
# License:: GPL v2
#
# Version:: v 0.4
#
# This RBot Plugin uses the FML-API to view FMLs in Channels,
# it supports the english (http://www.fmylife.com/),
# spanish (http://www.pvidadem.com/), 
# french (http://www.viedemerde.fr/), 
# italian (http://www.vitadimerda.it/) and 
# swedish (http://www.fanformittliv.com/) fmylife websites.
# To setup the language: config set fml.language fr
# (Default is english)
#
# please mail me bugs!
#
require 'rexml/document'

class FMyLifePlugin < Plugin
  API_URL = "http://api.betacie.com/view/"

  Config.register Config::StringValue.new('fml.language',
    :default => 'en',
    :desc => 'FMyLife Language')
  Config.register Config::IntegerValue.new('fml.max',
    :default => 3,
    :desc => 'Maximum FMLs to reply.')
  Config.register Config::BooleanValue.new('fml.short',
    :default => false,
    :desc => 'Shorter Agree/Deserved info.')

  def help(plugin, topic)
      "fml <number> => view a specific fmylife, fml [random] => a random FMyLife Item, fml top => best voted FMLs, fml last => last FML submissions, fml search <topic> => search for a FML"
  end

  def reply_fmls(m, page)
    doc = REXML::Document.new(page.body)

    i = 0
    imax = @bot.config['fml.max']
    doc.elements.each('root/items/item') do |ele|
      id = ele.attributes['id']
      author = ele.elements["author"].text
      category = ele.elements["category"].text
      text = ele.elements["text"].text
      agree = ele.elements["agree"].text
      deserved = ele.elements["deserved"].text

      if @bot.config['fml.short']
            m.reply "#{Bold}#{id}#{Bold}: #{text} - #{Bold}posted by #{author} in #{category}#{Bold} (#{agree}/#{deserved} agree/deserved)"
      else
            m.reply "#{Bold}#{id}#{Bold}: #{text} - #{Bold}posted by #{author} in #{category}#{Bold}"
            m.reply "#{Bold}#{agree}#{Bold} people agree, your life is f***ed! #{Bold}#{deserved}#{Bold} think you deserved that one!"
      end

      i += 1
      break if i >= imax
    end

    if i == 0
      m.reply 'Sorry no FMLs found.'
    end
  end

  def view_fmls(m, action)
    url = apiurl action
    
    page = nil
    begin
      page = @bot.httputil.get_response(url)
    rescue Exception => e
      error e.message
      warning e.backtrace.join("\n")
      return nil
    end

    reply_fmls(m, page)
  end

  def num(m, params)
    view_fmls(m, params[:num].to_s+'/nocomment')
  end

  def random(m, params)
    view_fmls(m, 'random')
  end

  def top(m, params)
    view_fmls(m, 'top')
  end

  def last(m, params)
    view_fmls(m, 'last')
  end

  def search(m, params)
    q = CGI.escape params[:topic].join ' '

    url = apiurl 'search'
    post_query = "search=#{q}"

    begin
      page = @bot.httputil.post(url, post_query)
    rescue Exception => e
      error e.message
      warning e.backtrace.join("\n")
      return nil
    end

    reply_fmls(m, page)
  end

  def apiurl(action)
    language = @bot.config['fml.language']
    "#{API_URL}#{action}?key=4c86ac96d8241&language=#{language}"
  end
end

plugin = FMyLifePlugin.new
plugin.map 'fml :num', :action => 'num', :requirements => {:num => /^\d+$/}
plugin.map 'fml [random]', :action => 'random'
plugin.map 'fml top', :action => 'top'
plugin.map 'fml last', :action => 'last'
plugin.map 'fml search *topic', :action => 'search'

