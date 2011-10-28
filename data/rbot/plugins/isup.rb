require 'rubygems'
require 'mechanize'

class IsupPlugin < Plugin

  def help(plugin, topic)
    "isup <site> => Check status of a website"
  end

  def isup(m, params)
    site = params[:site]
    agent = Mechanize.new
    page = agent.get('http://www.isup.me/' + site)

    page.root.xpath("//*[@id='container']").each do
      |li|
      if li.text =~ /It's just you. (.*)/
        m.reply "It's up! http://" + site
      else
        m.reply "It's down!"
      end
    end
  end
end

plugin = IsupPlugin.new
plugin.map 'isup [:site]', :action => :isup, :thread => true
