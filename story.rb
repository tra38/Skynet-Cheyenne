require_relative 'story_generator'
require 'faker'

class Character
	attr_reader :name, :enemy, :type, :traits, :job, :job_purpose, :company

	def initialize(args)
		@type = args[:type]
		@name = args[:name]
		@traits = args[:traits]
		@enemy = args[:enemy]
		@job = Faker::Name.title
		@job_purpose = Faker::Company.bs
		@company = Faker::Company.name
	end
end

character_array = []

CHARACTERS.each do |character|
	character_array << Character.new(type: character[0], name: character[1]["Name"], traits: character[1], enemy: character[1]["Enemy"])
end


##Search within the array to find a 'Character' object and delete it from the array,
##while returning that 'Character' object, so that it can be stored in an array! 
def find_and_return(array, target_character)
	array.length
	array.each_with_index do |character, index|
		if character.name == target_character["Name"]
			return array.delete(character)
		end
	end
end


p character_array.length

hero = character_array.shuffle!.pop

puts "The main character is #{hero.name}, and he is a #{hero.type}!"

p character_array.length

monster = find_and_return(character_array, hero.enemy )

puts "And the monster is #{monster.name}, the #{monster.type}!"

quest_giver = character_array.shuffle!.pop

puts "And the quest_giver is #{quest_giver.name}, the #{quest_giver.type}!"

monster_kid = find_and_return(character_array, quest_giver.enemy)


noun = ["hat", "car keys", "wedding", "sorrow", "violin case", "flower"].sample

noun += " " + ['museum','plaza','center','foundation','academy'].sample

noun = noun.split(" ").map(&:capitalize).join(" ")

puts <<-END
#{hero.name} never cared too much about #{noun}. It was too far away, too remote for him
to worry about. Instead, he would busy himself with his career as a #{hero.job},
where he would #{hero.job_purpose}. While he would work, #{hero.name} wished for some
adventure in his life.

#{hero.name}'s boss was #{quest_giver.name}, a #{quest_giver.job}. He was not a nice man,
 but he was not a mean man either, and desired to #{quest_giver.job_purpose}.

One day, #{monster.name} arrived to the corporate offices of #{hero.company}. A guard came and asked
for an 'ID' to verify his presence. #{monster.name} said that he came from the #{noun}, here for "vengance".
#{monster.name} #{random_word(monster.traits)}, and so stabbed the guard.

#{hero.name} saw #{monster.name} from his windows, and #{random_word(hero.traits, "Purpose")}.
#{monster.name} saw #{hero.name} right back, and #{random_word(monster.traits, "Purpose")}.

#{monster.name} had a purpose: to kill #{quest_giver.name}. #{monster.name} hated
how #{quest_giver.name} tried to destroy #{noun} years ago. It was time to pay him back.

#{monster.name} broke through the doors of #{hero.company} and ambushed #{quest_giver.name}
in the hallways. #{monster.name} #{random_word(monster.traits)} and stabbed #{quest_giver.name}.
#{quest_giver.name} #{random_word(quest_giver.traits)}, and called for help. "If you cannot give
me help", #{quest_giver.name} cried, "then give me justice!"

#{quest_giver.name} then died of blood loss.

#{monster.name} #{random_word(monster.traits)}. Happy with his evil deed, #{monster.name} left the
building, and returned back to #{noun}.

The rest of the co-workers were scared, but not #{hero.name}! He knew that action had to be taken,
or #{monster.name} will just return again to terrorize #{hero.company}.

#{hero.name} started training for combat, looking for the location of #{noun} and researching
the weaknesses of #{monster.name}. #{hero.name} #{random_word(hero.traits)}. He had a job to do.

A real job.

Finally, after 5 days of planning, #{hero.name} was ready! He #{random_word(hero.traits)}, and
left #{hero.company}, to travel over to #{noun} and end the life of #{monster.name}. But,
#{monster.name} was prepared.

When #{hero.name} arrived at #{noun}, #{monster.name} was waiting. #{hero.name} #{random_word(hero.traits)},
while #{monster.name} #{random_word(monster.traits)}. #{monster.name} stabbed #{hero.name} in the heart,
and #{hero.name} collapsed to the floor. But, #{hero.name} knew that his own survival was not important:
only the death of #{monster.name}.

#{hero.name} pulled out his own knife and slashed #{monster.name}'s legs. Then, #{hero.name} died from blood loss,
pleased at last that #{quest_giver.name}'s request for 'justice' was fufilled.

#{monster.name} stared at his own wounds, and #{random_word(monster.traits)}. He then looked up, and saw
his son, #{monster_kid.name}. #{monster.name} said, "Avenge my death. Attack #{hero.company}."

When #{monster.name} died, #{monster_kid.name} #{random_word(monster_kid.traits)}, and buried #{monster.name} in the
hallways of #{noun}. For the cycle of violence was all that #{noun} knew, and all that sustained #{noun}. #{monster_kid.name}
began his training.

END

#Conclusion: For this thing to work properly, the word phrases has to be changed! It has to be
#made more generic, and less suited for a specific setting. It has to be...literally...plug-and-play.

#I think it works fine, as a good rough draft. Word count seems to be at ~500 words though.
#That's enough to have it be qualified as a 'flash fiction', but not as a 'true' 'short-story'.

#I am pretty terrible at writing combat and training. Perhaps I can flesh that out in its own
#modules?

#While modularizing the phrases can be possible, I would support probably going down to the
#Word Metal and fixing it. Once the Word Metal is fine, I can move back to higher-level functions.
#Lower-level functions are still not optimized enough.

#According to: http://www.writing-world.com/fiction/length.shtml
#Micro-Fiction (up to 100 words): This very abbreviated story is often difficult to write,
#and even harder to write well, but the markets for micro fiction are becoming
#increasingly popular in recent times. Publishers love them, as they take up
# almost no room and don't cost them their budgets. Pay rates are often low, but for
#so few words, the rate per word averages quite high. Here's an example:

#6 word micro-story: "For Sale: Baby shoes. Never Worn." - Attributed to Ernest Hemingway
#Flash Fiction (100 - 1,000 words): This is the type of short-short story you would expect to 
#find in a glossy magazine, often used to fill one page of quick romance (or quick humor,
# in men's mags) Very popular, quick and easy to write, and easier to sell!

#Short Story (1,000 - 7,500 words):  The 'regular' short story, usually found in periodicals
# or anthology collections. Most 'genre' zines will features works at this length.

#Novellette (7,500 - 20,000 words): Often a novellette-length work is difficult to sell
# to a publisher. It is considered too long for most publishers to insert comfortably
# into a magazine, yet too short for a novel. Generally, authors will piece together
# three or four novellette-length works into a compilation novel.

#Novella (20,000 - 50,000 words):  Although most print publishers will balk at printing
# a novel this short, this is almost perfect for the electronic publishing market length.
# The online audience doesn't always have the time or the patience to sit through a 100,000
# word novel. Alternatively, this is an acceptable length for a short work of non-fiction.

#Novel (50,000 -110,000 words): Most print publishers prefer a minimum word count
# of around 70,000 words for a first novel, and some even hesitate for any work shorter
# than 80,000. Yet any piece of fiction climbing over the 110,000 word mark also tends
# to give editors some pause. They need to be sure they can produce a product that
# won't over-extend their budget, but still be enticing enough to readers to be saleable.
#Imagine paying good money for a book less than a quarter-inch thick?

#Epics and Sequels (Over 110,000 words): If your story extends too far over the 110,000 mark,
# perhaps consider where you could either condense the story to only include relevant details,
# or lengthen it to span out into a sequel, or perhaps even a trilogy.
#(Unless, of course, you're Stephen King - then it doesn't matter what length your manuscript is 
#- a publisher is a little more lenient with an established author who has a well-established
# readership)