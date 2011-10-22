require '/home/andy/wall-e/Murmur.rb'


class MumblePlugin < Plugin

	Config.register Config::IntegerValue.new('mumble.ice_port',
	:default => 6502, :requires_restart => false,
	:desc => "The port that Ice is running on for the desired mumble server. The server is always localhost.")
	
	Config.register Config::BooleanValue.new('mumble.show_password',
	:default => false, :requires_restart => false,
	:desc => "Show the server password (if it exists) in the command response?")
	
	Config.register Config::IntegerValue.new('mumble.server_number',
	:default => 1, :requires_restart => false,
	:desc => "The ID of the server to use.")
	
	Config.register Config::StringValue.new('mumble.public_ip',
	:default => "127.0.0.1:64738", :requires_restart => false,
	:desc => "The public address of the mumble server. Format ip:port.")

	Config.register Config::IntegerValue.new('mumble.max_users',
	:default => 10, :requires_restart => false,
	:desc => "The maximum number of users of the mumble server.")

	Config.register Config::StringValue.new('mumble.password',
	:default => "none", :requires_restart => false,
	:desc => "Password for the mumble server.")
	
	def getServer
		begin
			ic = Ice::initialize(ARGV)
			base = ic.stringToProxy("Meta:tcp -h 127.0.0.1 -p #{@bot.config['mumble.ice_port']}")
			meta = Murmur::MetaPrx::checkedCast(base)
			unless meta 
				raise "invalid proxy"
			end
			meta.getServer(@bot.config['mumble.server_number'])
			
		rescue *e
			debug e
			m.reply "There was an error connecting to the mumble server."
		end
		
	end
	
	def mumble(m, params)
	  	server = getServer
		
		if server.isRunning == false
		  m.reply "Mumble server not running! :("
		  return
		end
		replystr = "#{server.getConf('registerName')} | #{@bot.config['mumble.public_ip']}"
		if @bot.config['mumble.show_password']
		replystr = "#{replystr} | Password: #{@bot.config['mumble.password']}"
		end
		players = server.getUsers
		users, channels = [], []
		replystr = replystr + " | [#{players.length}/#{@bot.config['mumble.max_users']}]: "
		players.each do |id, player|
			users = users.push [player.channel, player.name]
			channels = channels.push player.channel unless channels.include? player.channel
		end
		userStr = []
		plrs = []
		userList = []
		afk = ""
		channels.each do |chan|
			users.each do |user|
				if user[0] == chan
					plrs = plrs.push user[1]
				end
			end
			if chan.id == 5 
				afk = "AFK: " + plrs.join(", ")
			else
				userList.push plrs.join(", ")
			end
			plrs = []
		end
		userStr = "( #{userList.join(" ) ( ")} ) " unless userList.size == 0
		userStr =  "#{userStr}( #{afk} )" if afk.length > 0
		if users.empty?
			replystr = replystr + "none!"
		else
			replystr = replystr + userStr
		end
		m.reply replystr
  end
end

plugin = MumblePlugin.new

plugin.map 'mumble', :action => :mumble, :thread => true 
