#- vim:sw=2:et
#++
#
# :title: lastfm plugin for rbot - specialized for #freelove on irc.sorcery.net
#
# Author:: Andrew Northall <andy.nth@gmail.com>
#
# Copyright:: (C) 2011 Andrew Northall
#
# License:: GPL v2
#
# Based on lastfm.rb supplied with rbot from http://ruby-rbot.org/
# This plugin will conflict with the default lastfm.rb - do not run them both

require 'rexml/document'
require 'cgi'
require 'rubygems'
require 'shorturl'
require 'active_support'

class LastFMPlugin < Plugin
	include REXML
	
	API_URL = "http://ws.audioscrobbler.com/2.0/?api_key="
	
	Config.register Config::StringValue.new('lastfm.api_key',
	:default => "", :requires_restart => false,
	:desc => "Your last.fm API key")
	
	Config.register Config::StringValue.new('lastfm.secret',
	:default => "", :requires_restart => false,
	:desc => "Your last.fm API secret")

	def similar_artists(m, params)
		artist = nil
		if params[:artist].class == Array
			artist = params[:artist].join(" ")
		else
			artist = params[:artist]
		end			
		opts = {:cache => false}
                xml = @bot.httputil.get_response("#{lastfm_api_url}method=artist.getsimilar&artist=#{CGI.escape artist}", opts)
                response = Document.new xml.body
		unless response
                        m.reply "could not parse xml from last.fm - omg"
                        return
                end

                if xml.class == Net::HTTPBadRequest
                        if response.root.elements["error"].attributes["code"] == "6"
                                m.reply "can't find artist \"#{artist}\""
                                return
                        else
                                m.reply "error from last.fm: #{response.root.elements["error"].text}"
                                return
                        end
                end
 
		root = response.root.elements[1]
		artists = Array.new
		root.each_element do
			|artist_element|
			artists.push artist_element.elements["name"].text
		end

		top_similar = artists[0..5]
		last_similar = top_similar[-1]
		top_similar.delete last_similar
		
		m.reply "Artists similar to #{artist}: #{top_similar.join(", ")} and #{last_similar}."
	end
	
	def help(plugin, topic="")
		char = @bot.config['core.address_prefix']
		case topic
		when ""
		      return "last.fm plugin by andrew. help topics: lastfm np, lastfm cp, lastfm url, lastfm reg"
		when "np"
		      return "#{char}np [user] => return the now playing for yourself or the specified user."
		when "cp"
		      return "#{char}cp <user1> [user2] => return the comparison from last.fm for user1 and user2. if user2 is not specified, it uses your own last.fm."
		when "url"
		      return "#{char}url [user] => return the last.fm url for user. if no user specified, it defaults to your own url."
		when "reg"
		      return "#{char}reg <lastfm-name> [\"nick\"] => register your last.fm username with the bot. if you specify \"nick\" after the username, it will remember you by nickname only and not hostmask, useful if you have a dynamic ip address."
		end
	end

	def get_hostmask(user)
		user.to_irc_netmask.to_s.split("!")[1]
	end
	
	def lastfm_api_url
		"#{API_URL}#{@bot.config['lastfm.api_key']}&"
	end
	
	def url(m, params)
		user = find_lastfm_user(m, params[:user] || m.sourcenick)		
		m.reply "last.fm url for #{params[:user] || m.sourcenick} is http://last.fm/user/#{CGI.escape user.downcase}"
	end
	
	def compare(m, params)
		user1 = find_lastfm_user(m, params[:user1])
		user2 = find_lastfm_user(m, params[:user2])
		user1v = params[:user1]
		user2v = m.sourcenick if params[:user2].nil?
		user2v = params[:user2] unless params[:user2].nil?
		  
		opts = {:cache => false}
		xml = @bot.httputil.get_response("#{lastfm_api_url}method=tasteometer.compare&type1=user&type2=user&value1=#{CGI.escape user1}&value2=#{CGI.escape user2}&limit=10", opts)
		response = Document.new xml.body

		unless response
                        m.reply "could not parse xml from last.fm - omg"
                        return
                end
		
		if xml.class == Net::HTTPBadRequest
                        if response.root.elements["error"].attributes["code"] == "7"
                                m.reply "one or both of the users specified don't exist (#{user1} and #{user2})"
                                return
                        else
                                m.reply "error from last.fm: #{response.root.elements["error"].text}"
                                return
                        end
                end		
		
		root = response.root.elements[1].elements[1]
		score = root.elements["score"].text.to_f
		score = (score * 100).to_i
		matches = root.elements["artists"].attributes["matches"].to_i
		artists = root.elements["artists"]
		matched = Array.new
		artists.each_element do
			|element|
			matched.push element.elements["name"].text
		end

		replystr = "#{user1v} and #{user2v} score #{score}\% with"
		matches_str = "no matches!"
		if matches == 10
			matches_str = "10 or more matches"
		elsif matches > 0 and matches < 10
			matches_str = "#{matches} matches"
		end
		if matches == 0
			m.reply "#{replystr} #{matches_str}"
			return
		end
		matched = matched[0..4]
		last = matched[-1]
		len = matched.length - 2
		matched = matched[0..len]
		matched = matched.join(", ")
		replystr = "#{replystr} #{matches_str} including #{matched} and #{last}."
		m.reply replystr
	end
	
	def now_playing(m, params)
		user_to_query = params[:user]
		send_to_channel = false
		private_channel = nil
		unless params[:user].nil?
			if params[:user].split("")[0] == "#" and m.private?
				private_channel = params[:user]
				user_to_query = nil
				send_to_channel = true
			end
		end
		lastfm_username = find_lastfm_user(m, user_to_query)
		opts = {:cache => false}
		xml = @bot.httputil.get_response("#{lastfm_api_url}method=user.getrecenttracks&user=#{CGI.escape lastfm_username}", opts)
		response = Document.new xml.body
		unless response
			m.reply "could not parse xml from last.fm - omg"
			return
		end
		
		if xml.class == Net::HTTPBadRequest
			if response.root.elements["error"].attributes["code"] == "6"
				m.reply "no such last.fm user as #{lastfm_username}"
				return
			else 
				m.reply "error from last.fm: #{response.root.elements["error"].text}"
				return
			end
		end

		if params[:user].nil?
			visible_user = m.sourcenick
	        elsif m.private? and send_to_channel
			visible_user = m.sourcenick
		else
			visible_user = params[:user]
		end
		
		unless response.root.elements[1].has_elements?
			m.reply "#{visible_user} hasn't played anything lately"
			return
		end
		
		track = response.root.elements[1].elements[1]
		artist = track.elements["artist"].text
		name = track.elements["name"].text
		album = track.elements["album"].text
		streamable = track.elements["streamable"].text.to_i
		url = ShortURL.shorten(track.elements["url"].text, :tinyurl) if streamable == 1
		now_playing = track.attributes["nowplaying"]
		
	        xml = @bot.httputil.get_response("#{lastfm_api_url}method=track.getinfo&track=#{CGI.escape name}&artist=#{CGI.escape artist}&username=#{CGI.escape lastfm_username}", opts)
		response = Document.new xml.body
		extra_info = true
		unless response
			extra_info = false
			@bot.say "#freelove-bots", "couldn't get extra info for #{name} by #{artist}."
		end
			
		if xml.class == Net::HTTPBadRequest
			extra_info = false
			@bot.say "#freelove-bots", "error from last.fm when getting song info for #{name} by #{artist}: #{response.root.elements["error"].text}"
		end
		track_info = response.root.elements[1]
		listeners = track_info.elements["listeners"].text
		playcount = track_info.elements["playcount"].text
		userplaycount = track_info.elements["userplaycount"]
		userplaycount = userplaycount.text unless userplaycount.nil?
		userloved = track_info.elements["userloved"].text
		case userloved
		when "1"
		  userloved = true
		else
		  userloved = false
		end
		ratio = ((( playcount.to_f / listeners.to_f ) * 100 ).round / 100.0)
		play_ratio = "#{ratio}:1"
		tags = Array.new
		track_info.elements["toptags"].each_element do
			|tag|
			tags.push tag.elements["name"].text
		end
		if now_playing == "true"
			if extra_info and !userplaycount.nil? and userloved
				np = "is now playing a loved track,"
			else
	                        np = "is now playing"
			end
                else
			if extra_info and !userplaycount.nil? and userloved
				np = "last played a loved track,"
			else
	                        np = "last played"
			end
                end

		reply = "#{visible_user} #{np} \"#{name}\" by #{artist}"

                if !album.nil?
                  reply = "#{reply}, from the album \"#{album}\""
                end

		tags = tags[0..3].join(", ")
		if extra_info
			if !userplaycount.nil?
				num = ActiveSupport::Inflector.ordinalize(userplaycount.to_i + 1)
				reply = "#{reply} for the #{num} time."
			else
				reply = "#{reply} for the 1st time."
			end
			extrareply = "Track played #{playcount} times in total by #{listeners} listeners (#{play_ratio})."
			if tags == ""
			  	extrareply = "#{extrareply} There are no tags"
			else
				extrareply = "#{extrareply} Top tags: #{tags}"
			end
			if streamable == 1
                                extrareply = "#{extrareply} - stream it at #{url}"
                        else
				extrareply = "#{extrareply}."
			end
		else
			reply = "#{reply}."
		end
		if send_to_channel
			@bot.say private_channel, reply
			@bot.say private_channel, extrareply
		else
		        m.reply reply
			m.reply extrareply
		end
	end
	
	def register_user(m, params)
		escaped_name = CGI.escape(params[:name])
		if params[:how_to_store] == "nick"
			@registry[m.sourcenick.downcase] = escaped_name
                        m.reply "I have remembered you by nick to be http://last.fm/user/#{escaped_name} on last.fm"
		else
			hostmask = get_hostmask(m.source)
			@registry[hostmask] = escaped_name
			@registry[m.sourcenick.downcase] = escaped_name
			m.reply "I have remembered you by hostmask and nick to be http://last.fm/user/#{escaped_name} on last.fm"
		end
	end
    
	def register_other(m, params)
		m.reply "This command must be done in a channel." if m.private?
		return if m.private?
		escaped_name = CGI.escape(params[:name])
		nick = params[:nick]
		if params[:how_to_store] == "nick"
			@registry[nick.downcase] = escaped_name
			m.reply "Registered #{nick} as #{params[:name]} by nickname."
		else
			chuser = m.channel.get_user(nick)
			if chuser.nil?
				m.reply "Cannot find user #{nick} in the channel."
				return
			else
				hostmask = get_hostmask(chuser)
				@registry[hostmask] = escaped_name
				@registry[nick] = escaped_name
				m.reply "Registered #{nick} as #{params[:name]} by hostmask #{hostmask} and by nick."
			end
		end
	end
	
	def forget_user(m, params)
		@registry.delete(m.sourcenick.downcase) if @registry.has_key?(m.sourcenick.downcase)
		@registry.delete(get_hostmask(m.source)) if @registry.has_key?(get_hostmask(m.source))
		m.reply "I have forgotten your last.fm username"
	end
	
	def find_lastfm_user(m, other_name = nil)
		unless other_name.nil?
			nick = other_name
			@registry.delete nil
			hostmask = nil
			unless m.private?
		  		hostmask = get_hostmask(m.channel.get_user(other_name)) unless m.channel.get_user(other_name).nil?
			end
		else
			nick = m.sourcenick
			hostmask = get_hostmask(m.source)
		end
			
		if @registry.has_key? nick
			@registry[nick]
		elsif @registry.has_key? hostmask
			@registry[hostmask]
		else
			#m.reply "Assuming you are #{m.sourcenick} - do \"help lastfm register\""
			return other_name if !other_name.nil?
			return m.sourcenick
		end
	end
end


plugin = LastFMPlugin.new

plugin.default_auth 'lastfm::regother', false

plugin.map 'reg :name [:how_to_store]', :action => :register_user, :thread => true
plugin.map 'lastfm forget', :action => :forget_user, :thread => true
plugin.map 'np [:user]', :action => :now_playing, :thread => true
plugin.map 'cp :user1 [:user2]', :action => :compare, :thread => true
plugin.map 'url [:user]', :action => :url, :thread => true
plugin.map 'similar *artist', :action => :similar_artists, :thread => true
plugin.map 'regother :nick :name [:ihow_to_store]', :action => :register_other, :thread => true, :auth_path => '!lastfm::register_other!'
