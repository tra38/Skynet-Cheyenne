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

# class Story
# 	attr_reader :hero, :monster, :quest_giver, :monster_kid, :noun

# 	def initialize(args)
# 		@hero = args[:hero]
# 		@monster = args[:monster]
# 		@quest_giver = args[:quest_giver]
# 		@monster_kid = args[:monster_kid]
# 		@noun = args[:noun]
# 	end

# 	def passage(file)
# 		load "#{file}"
# 	end

# end

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

HERO = character_array.shuffle!.pop

p character_array.length

MONSTER = find_and_return(character_array, HERO.enemy )

QUEST_GIVER = character_array.shuffle!.pop

MONSTER_KID = find_and_return(character_array, QUEST_GIVER.enemy)

noun = ["hat", "car keys", "wedding", "sorrow", "violin case", "flower"].sample

noun += " " + ['museum','plaza','center','foundation','academy'].sample

NOUN = noun.split(" ").map(&:capitalize).join(" ")

load("story.sky")


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