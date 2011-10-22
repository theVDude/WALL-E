class PraisePlugin < Plugin

##
# Adjectives
##
@@adj = [
"able",
"agreeable",
"alert",
"alluring",
"ambitious",
"amused",
"awesome",
"boundless",
"brave",
"bright",
"brilliant",
"calm",
"capable",
"carefree",
"charming",
"charismatic",
"cheerful",
"coherent",
"colorful",
"comfortable",
"confident",
"considerate",
"cool",
"cooperative",
"courageous",
"credible",
"cultured",
"cute",
"dashing",
"dazzling",
"debonair",
"decisive",
"decorous",
"delightful",
"delicious",
"detailed",
"determined",
"diligent",
"disarming",
"dynamic",
"eager",
"efficient",
"elated",
"elegant",
"eminent",
"enchanting",
"encouraging",
"endurable",
"energetic",
"enjoyable",
"entertaining",
"enthusiastic",
"excellent",
"excited",
"exclusive",
"exuberant",
"fabulous",
"fair",
"faithful",
"fantastic",
"fascinating",
"fearless",
"fine",
"friendly",
"fulfilling",
"funny",
"generous",
"gentle",
"glorious",
"good",
"great",
"happy",
"handy",
"harmonious",
"helpful",
"heroic",
"hilarious",
"honorable",
"impartial",
"industrious",
"inquisitive",
"instinctive",
"intense",
"intriguing",
"invigorating",
"jolly",
"joyous",
"jubilant",
"keen",
"kind",
"kind-hearted",
"knowledgeable",
"level-headed",
"likeable",
"lively",
"lovely",
"loving",
"lucky",
"magnificant",
"mature",
"mellow",
"mighty",
"modern",
"neat",
"nice",
"optimisitic",
"painstaking",
"patient",
"peaceful",
"perfect",
"placid",
"plausible",
"pleasant",
"polite",
"productive",
"proud",
"punctual",
"quick",
"radient",
"receptive",
"reflective",
"refreshing",
"resolute",
"responsible",
"righteous",
"roaring",
"satisfying",
"secure",
"self-assured",
"silly",
"sincere",
"skillful",
"smart",
"smiling",
"splendid",
"sophisticated",
"stimulating",
"successful",
"succinct",
"super-duper",
"surprising",
"talented",
"terrific",
"thoughtful",
"thrilling",
"trustworthy",
"upbeat",
"unique",
"vigorous",
"vivacious",
"wise",
"witty",
"wonderful",
]

##
# Amounts
##
@@amt = [
"accumulation",
"basket",
"bucket",
"boxful",
"dollop",
"lump",
"mass",
"mound",
"pile",
"stack",
"bag",
"truckload",
"spoonful",
]

##
# Objects
##
@@noun = [
"marshmallow bunnies",
"candy canes",
"fluffy clouds",
"puppies",
"kittens",
"unicorns",
"rainbows",
"chocolate covered strawberries",
"chocolate chips",
"candy",
"sunny days",
"starry skies",
"good ideas",
"future endeavours",
"talent",
"panda bears",
"manatees",
"piglets",
"mini-giraffes",
"fire flies",
"sugar dumplings",
"cheesecake",
]

  def help(plugin, topic="")
    return "[msg]praise me|<person> => praise you or <person>. msgpraise praises in private"
  end

  def praise(m, params)
    who = params[:who]
    if who == "me"
      m.reply "don't be so big-headed!"
      return
    end

    priv = params[:priv] || m.plugin == "msgpraise"
    case who.downcase
    when @bot.nick.downcase
      prefix = "i am "
    when /^#/
      prefix = "you are all "
    when m.sourcenick.downcase
      prefix = "you are "
    else
      prefix = priv ? "you are " : "#{who} is "
    end
    suffix = ""

    if priv
      msgto = who
      suffix = " (from #{m.sourcenick})" unless who == m.sourcenick
    else
      msgto = m.channel
    end

    praise = generate_praise
    @bot.say msgto, prefix + praise + suffix
  end

  def generate_praise
    adj = @@adj.pick_one
    adj2 = ""
    loop do
      adj2 = @@adj.pick_one
      break if adj2 != adj
    end
    amt = @@amt.pick_one
    noun = @@noun.pick_one
    start = "a "
    start = "an " if ['a','e','i','o','u'].include?(adj[0,1])
    "#{start}#{adj} #{amt} of #{adj2} #{noun}"
  end
end

plugin = PraisePlugin.new
plugin.map "praise :who [:priv]", :action => :praise, :requirements => { :priv => /in private/ }
plugin.map "msgpraise :who", :action => :praise

