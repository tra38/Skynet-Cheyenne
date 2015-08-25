require 'faker'

def normal_location_noun
	['store', 'shop', 'superstore', 'megastore', 'boutique', 'emporium', 'market'].sample
end

def exotic_location_noun
	['museum','plaza','center','foundation','academy'].sample
end

def generate_location(word)
	string = word+" "+normal_location_noun
	puts titleize(string)
end

def generate_think_tank(word)
	puts titleize("The #{word} #{exotic_location_noun}")
end

def titleize(word)
	word.split.map(&:capitalize).join(' ')
end

#Word.capitalize just capitalize only the first word, while this 'titieize' method will title each
#individual word


#These codes are there to help me test whether the word combos are effective
words_to_generate = ["hat", "car keys", "wedding", "sorrow", "violin case", "flower"]

exotic_words = ['museum','plaza','center','foundation','academy']

words_to_generate.each do |normal_word|
	exotic_words.each do |exotic_word|
		new_word = normal_word+" "+ exotic_word
		puts titleize(new_word)
	end
end

# words_to_generate.each do |word|
# 	generate_location(word)
# 	generate_think_tank(word)
# end


#Additional Notes:
# Deleted Words: 'research facilitiy'

# Store-related nouns:
# 'store', 'shop', 'superstore', 'megastore', 'boutique', 'emporium', 'market'

# Center-related nouns: 'plaza', 'museum', 'center'