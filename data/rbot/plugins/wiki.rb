class WikiPlugin < Plugin
  def wiki(m, params)
    m.reply "http://freelove-irc.com/wiki/"
  end
end

plugin = WikiPlugin.new
plugin.map 'wiki', :action => :wiki, :thread => true
