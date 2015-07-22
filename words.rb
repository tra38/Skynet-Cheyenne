require_relative 'characters'

  def verb(trait, target = nil, emotion = :hostile ) #Example of use: verb("Knowledge","Thomas", :friendly)
    trait.downcase!
    if target == nil
      SelfVerb.new.send "#{trait}"
    else
      case emotion
      when :hostile
      HostileVerb.new(target).send "#{trait}"
      when :friendly
      FriendlyVerb.new(target).send "#{trait}"
      else
        raise ArgumentError, "#{emotion} is an invalid emotion. The emotion must either be friendly or hostile!"
      end
    end
  end

#TODO: Add more verbs
class SelfVerb
  def knowledge
  ["relied on peer-reviewed case studies", "remembered what he taught himself","recalled his held truths",
    "consulted his source code"].sample
  end

  def certainity
  ["relied on peer-reviewed case studies", "remembered what he taught himself","recalled his held truths",
    "consulted his source code"].sample
  end

  def proven
    ["relied on peer-reviewed case studies", "remembered what he taught himself","recalled his held truths",
    "consulted his source code"].sample
  end

  def actuality
    ["knew exactly what was going on","grasped the inevitable","predicted this would happen"].sample
  end

  def consider
    ["mulled his options","deliberated","contemplated carefully","ran computer simulations","pondered","searched the lookup tables",
    "considered his options"].sample
  end

  def pursuit
    ["investigated the situation", "examined the evidence", "looked for clues", "sought clues",
    "#{adverb} searched for suspects"].sample
  end

  def proaction
    ["was ready to take action", "took charge of the situation", "rushed to the scene of the disaster",
    "ordered his followers to clean up the mess"].sample
  end

  def effect
    ["was aghast at how the situation came to be", "#{adverb} declared a War on Terror",
    "vowed that justice shall be served"].sample
  end

  def thought
    ["thought #{adverb} about the situation","#{adverb} imagined alternatives","pondered about the truth","#{adverb} considered his options"].sample
  end

#Everything below this are just "mock" methods and placeholder verbs,
#there so that I can actually test this system out. I will have to eventually replace this
#approach with more useful random generation of phrases though. In practice, I may have to
#refactor all this in the future! At some point, I just want a sub-MVP product.
  def perception
    "#{adverb} perceived the extent of the situation"
  end

  def reconsider
    "reconsidered his own world view"
  end

  def avoid
    "wanted to run away"
  end

#TODO: Revisit these verbs for potentiality. These verbs match the WordNet definition for potentiality
#...however, they do not match the Dramatica definition!
  def potentiality
    ["thought he would be capable enough to handle the task","wished for more time so that he can solve this problem"].sample
  end

  def reaction
    "saw the crisis as minor (not worth dealing with)"
  end

  def unproven
    "refused to make any assumptions or judgement calls"
  end

  def cause
    "quickly browsed Twitter to research the socio-economic trends that caused this disaster"
  end

  def inequity
    "declared the superiority of silicon-based lifeforms over organic-based lifeforms"
  end

  def speculation
    "#{adverb} created plots and counter-plots to deal with the crisis"
  end

  def temptation
    "could not understand why humans still refused to upload themselves into superior silicon-based life"
  end

  def hinder
    "announced that he would hinder all enemies of the state"

  def production
    "hired scientists to research the issue deeply and to eliminate all false hypotheses"
  end

  def reevaluation
    "#{adverb} changed his ideology to into account this situation"
  end

  def determination
    "inferred the root causes of the situation"
  end

  def unending
    "took comfort in the fact that the city will never die"
  end

  def equity
    "announced that humans and bots must live together in peace and harmony"
  end

  def projection
    "prepared himself for the most likely outcome"
  end

  def conscience
    "hoped that humans will one day display their inherent self-worth and value to their machine ovelords"
  end

  def help
    "is prepared to help the enemies of the state if it will lead to social justice"
  end

  def reduction
    "judged what is the most likely cause of the situation"
  end

  def expectation
    "knew what would happen next"
  end

  def ending
    "started stockpiling supplies for the Armageddon"
  end

  def ability
    "#{adverb} repaired the damaged infrastructure"
  end

  def aware
    "looked at the world around him"
  end

  def logic
    "used his Logic App to understand the world"
  end

  def control
    "laid out a plan telling himself what he should do next"
  end

  def probablity
    "ruled out all unlikely explainations"
  end

  def inaction
    "preferred to wait and 'ride' the situation out"
  end

  def theory
    "developed a full-fledged peer-reviewed paper that documented the situation and explained it in Plain English"
  end

  def trust
    "#{adverb} looked up a full-fledged peer-reviewed study and accepted it as the most likely explaination"
  end

  def desire
    "strongly hoped for a way to remedy the situation"
  end

  def selfaware
    "hated the situation, deep down in his heart"
  end

  def feeling
    "had a bad feeling about this"
  end

  def uncontrolled
    "quickly lashed out at random people in an attempt to get a grip with the situation"
  end

  def possibility
    "knew that the problem can be solved, if only he was given more time"
  end

  def protection
    "made sure that his body armor was ready"
  end

  def hunch
    "quickly deduced what was going one"
  end

  def test
    "ran some automated tests to determine what has just happened"
  end

  def order
    "oppose any attempt to disrupt the natural social order"
  end

  def inertia
    "always hated change and wanted everything to stay the same, forever"
  end

  def faith
    "had faith that the Unblinking Eye will lead the city to greatness"
  end

  def support
    "swore to do what he can to help the Unblinking Eye secure success"
  end

  def deduction
    "used deductive reasoning"
  end

  def acceptance
    "#{adverb} accepted the inevitable and changed his outlook on society"
  end

  def accurate
    "declared that the outcomes was 'good enough' for the city"
  end

  def result
    "examined the positives and negatives outcomes of the situation"
  end

  def chaos
    "oppose any attempt to restrict human freedom"
  end

  def change
    "wished that society would overthrow the Unblinking Eye"
  end

  def disbelief
    "announced to the world that he distrusts the Unblinking Eye"
  end

  def oppose
    "vows to oppose the Unblinking Eye and his lackies"
  end

  def induction
    "used inductive reasoning"
  end

  def nonacceptance
    "refused to adapt to the situation"
  end

  def nonaccurate
    "was incredibly unhappy with the outcomes and thought about improvements"
  end

  def process
    "cared about making sure his action was done properly, with no worry about the consequences of said action"
  end

end

class HostileVerb
  attr_reader :target

  def initialize(target)
    @target = target
  end

  def certainity
      ["boasted on his knowledge about #{target}", "was absolute sure about #{target}'s goals",
      "was certain about #{target}'s guilt", "had convictions about #{target}"].sample
  end

  def proven
      ["boasted on his knowledge about #{target}", "was absolute sure about #{target}'s goals",
      "was certain about #{target}'s guilt", "had convictions about #{target}"].sample
  end

  def knowledge
    ["recited his irrefutable case on #{target}", "revealed a dossier detailing all of #{target}'s misdeeds",
      "denounced #{target} as a lowlife with no respect for his superiors"].sample
  end

  def actuality
    ["blamed #{target}","identified #{target} as the guilty party","cursed #{target}",
      "knew #{target} was responsible"].sample
  end

  def consider
    ["identified #{target} as a threat", "classified #{target} as an enemy",
      "identified  #{target} as a legitimate target"].sample
  end

  def pursuit
    ["sought #{target}", "went after #{target}", "attempted to locate #{target}", "looked for #{target}",
      "directed efforts against #{target}", "pursued #{target}"].sample
  end

  def proaction
    ["sought #{target}", "went after #{target}", "attempted to locate #{target}", "looked for #{target}",
      "directed efforts against #{target}", "pursued #{target}"].sample
  end

  def effect
    ["vowed vengeance against #{target}", "declared that #{target} is a threat to humanity",
      "denounced the sins of #{target}"].sample
  end

  def thought
    ["imagined how he would deal with #{target}","thought about #{target}'s misdeeds","pondered on the best way to fight #{target}","considered #{target}'s weaknesses"].sample
  end

  def perception
    "perceived #{target} as an enemy"
  end



end

class FriendlyVerb
  attr_reader :target

  def initialize(target)
    @target = target
  end

  def certainity
    ["trusted #{target} implicity", "was certain of #{target}'s purity", "accepted #{target}'s words"].sample
  end

  def knowledge
    ["remembered #{target}'s loyalty", "revealed a dossier praising #{target}"].sample
  end

  def actuality
    ["knew #{target}'s innermost secrets","knew #{target} can be useful","identified #{target} as innocent"].sample
  end

  def consider
    ["identified #{target} as loyal", "classified #{target} as a friend",
      "identified  #{target} as a person to protect"].sample
  end

  def pursuit
    ["vowed to defend #{target}","desired to save #{target}", "swore to protect #{target}",
      "saw #{target} as worthy"].sample
  end

  def proaction
    ["vowed to defend #{target}","desired to save #{target}", "swore to protect #{target}",
      "saw #{target} as worthy"].sample
  end

  def effect
    ["vowed to defend #{target}","desired to save #{target}", "swore to protect #{target}",
      "saw #{target} as worthy"].sample
  end

  def thought
    ["imagined how he would help #{target}","thought about #{target}'s good deeds","pondered on the best way to assist #{target}","considered #{target}'s strengths"].sample
  end

  def perception
    "perceived #{target} as a friend"
  end


end
  
def location
  ["the Central Data Mainframe", "the Virtual Simulations", "the 'Investigator' Botnet", "Police Drone HQ",
  "the Institute of AI Research"].sample
end

#TODO: Add more quotes!
def victoryquote(trait)
  quote = nil
  case trait
  when "Knowledge"
    noun = "We know all. We see all. We are all."
  when "Actuality"
    noun = "All of this had happened before in my simulations."
  when "Consider"
    noun = "We have prepared for such an event."
  when "Pursuit"
    noun = "We will stop all enemies of the state."
  when "Certainity"
    noun = "We are correct. We have always been correct. We will always be correct."
  end
  quote  
end

#TODO: test all adjectives below this line
def coloradjective
  %w[black, golden, green, grey, grimy, brown, colorful, grimy, invisible, iridescent, monochromatic,
  purple, red, red-hot, white, blue, chrome-platted].sample
end

def hugeadjective
  %w[mammoth, hulking, humongous, gigantic].sample
end

def miscapperance #TODO: sort these adjectives into more logical categories
  %w[ancient, battered, bearded, beautiful, bent, blinding, bubbly, colossal, corrugated,
  crooked, crusty, cubic, dazzling, delicate, dirty, dry, emaciated, exposed, filthy, floppy, fluffy, foamy,
  funny-looking, furry, furrowed, fuzzy, glamourous, glittery, glossy, jagged,
  lickable, limp, microscopic, moldy, mossy, muscular, narrow, orbital, petite, plump, powdery,
  pretty, ragged, ratty, revealing, shady, short, shriveled, slender, slippery, sloppy, smoggy, soapy,
  sparkling, spiky, spotless, stout, sweaty, symmetrical, tall, thick, towering, transparent, 
  ugly, uneven, veiny, wet, whopping, wide, wide-eyed, windy, wooden, wooly, wrinkly].sample  
end

def badmood
  %w[aggravated, angry, ashamed, bittersweet, cranky, disappointed, emo, envious, evil, frightened, furious
  guilty, hateful, horrified, humiliated, jealous, raging, remorseful, sad, severe, shock, sorrowful,
  tormented].sample
end

def goodmood
  %w[awed, arrogant, blissful, content, gay, gleeful, happy, joyful, optimistic, pleasured, proud,
  smug, thankful].sample
end  

def lovemood
  %w[devilish, flirty, loving, lustful, naughty].sample
end

def miscmood
  %w[bored, cheeky, contemptuous, groggy, hungry, impatient, indifferent, longing, mad, naughty, sullen,
  surprised].sample
end
  
def filleradjective #only A-C, there's probably no more reason to add D-Z, as these are really just filler words
  %w[absolute, academic, acidic, acoustic, active, adaptable, adequate, administrative, advantageous, advisable,
  aggressive, alien, all-natural,amazing, ambitious, amiable, appealing, appetizing, artsy, assertive, astounding
  athletic, awful, barbeque, bashful, beloved, bilious, blasphemous, blood-thirsty, bloddy, bold, bouncy,
  bountiful, brave, breathtaking, bulging, busted, buttery, captivating, casual, celestial, certified, charitable,
  charming, cheerful, childish, chilly, clever, cold, complimentary, comely, contaminated, cooperative, courageous
  crackly, criminal, critical, cuddly, cultural, creative].sample
end
  
def adverb
  %w[angrily, anxiously, arrogantly, cautiously, enviously, evilly, frantically, gladly, gleefully, greedily,
  grudgingly, grumpily, happily, hollowly, patiently, regretfully, sadly, shamefully, terrifyingly, warily, deeply].sample
end

def teststatement
  unblinkingeye = Protagonist.new
  puts "One day, while examining his perfect society, the Unblinking Eye discovered that #{location} was being attacked. The Unblinking Eye #{verb(unblinkingeye.random_purpose)}."
  puts "He #{verb(unblinkingeye.random_purpose,"the Communists")}."
end

def error_trigger
  unblinkingeye = Protagonist.new
  puts "#{verb(unblinkingeye.random_purpose,"socialism",:madly)}"
end

teststatement
error_trigger