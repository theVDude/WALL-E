class SSLPlugin < Plugin
	def message(m)
		reply_str = ""
		words = m.plainmessage.split(" ")
		words.each do |word|
			if word =~ /^https?\:\/\/ssl\.what\.cd\/?/
				reply_str = reply_str + "[DeSSL] #{word.gsub(/^https?\:\/\/ssl\.what\.cd\/?/, 'http://what.cd/')} "
			elsif word =~ /^http\:\/\/what\.cd\/?/
				reply_str = reply_str + "[SSL] #{word.gsub(/^http\:\/\/what\.cd\/?/, 'https://ssl.what.cd/')} "
			end
		end
		
		m.reply reply_str
	end
end

plugin = SSLPlugin.new
