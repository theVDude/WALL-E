#-- vim:sw=2:et
#++
#
# :title: Greeter Plugin
#
# Author:: Andrew Northall <cubehat@gmail.com>
# Copyright:: (C) 2008 Andrew Northall
# License:: BSD License
#
class GreeterPlugin < Plugin
  Config.register Config::BooleanValue.new('greeter.enabled',
                                           :default => true,
                                           :desc => 'If the greeter plugin is enabled or not.')
                                          
  Config.register Config::ArrayValue.new('greeter.ignore_channels',
                                           :default => [],
                                           :desc => 'Channels for the greeter to be disabled in.') 

  def join(m)
    return unless @bot.config['greeter.enabled']
    return if @bot.config['greeter.ignore_channels'].include?("#{m.channel}")
    who = m.source.nick
    if @registry.has_key?(who)
      @bot.say(m.channel, "[#{who}] #{@registry[who]}")
    end
  end

  def set(m, params)
    greeting = params[:greeting]
    who = m.source.nick
    @registry[who] = "#{greeting}"
    m.okay
  end

  def view(m, params)
    who = m.source.nick
    if @registry.has_key?(who)
        @bot.say(m.channel, "[#{who}] #{@registry[who]}")
    else
        m.reply "you have no greeting, use 'greeting set' to get one"
        return
    end
  end

  def clear(m, params)
    who = m.source.nick
    if @registry.has_key?(who)
      @registry.delete(who)
      m.okay
    else
      m.reply "you have no greeting to delete :/"
    end
  end

  def help(m, topic="")
    case topic
    when ""
      return "greeting plugin. commands: set, view, clear. also see: about"
    when "set"
      return "greeting set *greeting => set *greeting to your new greeting"
    when "view"
      return "greeting view => view your greeting"
    when "clear"
      return "greeting clear => clear your greeting"
    when "about"
      return "greeting plugin coded by andrew northall, (C) 2008"
    end
  end
end

plugin = GreeterPlugin.new
plugin.map 'greeting set *greeting', :action => :set
plugin.map 'greeting clear', :action => :clear
plugin.map 'greeting view', :action => :view
