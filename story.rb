require_relative 'story_generator'
p @characters
main_character = sample(@characters)
the_enemy = enemy(main_character)

# Test Sentence 1
puts "One day, while examining his perfect society, the Unblinking Eye discovered that #{location} was being attacked. The Unblinking Eye #{random_word(main_character)}."

puts "\n"

# Test Sentence 2
puts "At the #{location}, the Tempeter #{random_word(the_enemy,"Evaluation")}. He was happy, as most people
   were. In the bad old days, the Tempeter would #{adverb} work every day of his life. And he
   hated it! Now, he no longer has to work. But now the Tempeter was bored. And he wanted to pass
   the time. So the Tempeter had an idea: 'I want to write a poem' The Tempeter was in a happy mood.

   He #{adverb} went to his friend, the Unblinking Eye. The Unblinking Eye #{random_word(main_character, "Purpose")}, and
   #{adverb} wrote the story. The #{filler} button analyzed the character’s inner personality and wrote an excellent poem.

   The character looked at the #{filler} poem. It was great, it was grand, and it was terrible. The character tore it to pieces. The other character was confused. “I only wanted to make you happy, because I wanted you to---”

   “I wanted to write a poem! Not you!” The first character cried."

puts <<-END
When I was some fifteen years old, I once made the remark, "Why, that's impossible."
#{name(main_character)} was a scientist. He replied gently, "My boy, when you are grown older and wiser you will realize that nothing is impossible."
Somehow, that statement stayed with me.

I recall that when I got his note with its few sentences bidding me come to see him, I had a premonition that it marked the beginning of something strange. As though the portals of a mystery were opening to me!
#{name(main_character)} received me in his living-room. He admitted me himself. He told me that his man servant was out.
It was a small room, with leather-covered easy chairs, rugs on its hardwood floor, and sober brown portieres at its door and windows.
A brown parchment shade shrouded the electrolier on the table. It was the only light in the room. It cast its mellow sheen upon #{name(main_character)}'s lean graceful figure as he #{random_word(main_character)}.
He said, "#{name(the_enemy)}, I want a little talk with you. I've something to tell you—something to offer you."
He #{random_word(main_character, "Motivation")}. And I saw that his hand was trembling.
"But I don't understand what you mean," I protested.

He retorted, "I'm suggesting that you might be tired of being a clerk in a brokerage office. Tired of this humdrum world that we call civilization. Tired of Wall Street."
"I am, #{name(main_character)}. Heavens, that's true enough."

His eyes held me. He was smiling half #{adverb}: his voice was only half serious. Yet I could see, in the smoldering depths of those luminous dark eyes, a deadly seriousness that belied his smiling lips and his gay tone.
He interrupted me with, "And I offer you a chance for deeds of high adventuring. The romance of danger, of pitting your wits against villainy to make right triumph over wrong, and to win for yourself power and riches—and perhaps a fair lady...."

"#{name(main_character)}, you talk like a #{filler} swashbuckler of the middle ages."

I thought he would grin, but he turned suddenly solemn.

"I'm offering to make you henchman to a king, #{name(the_enemy)}."

"King of what? Where?"

He #{random_word(main_character,"Purpose")}. He shrugged. "What matter? If you seek adventure, you can find it—somewhere. If you feel the lure of romance—it will come to you."

I said, "Henchman to a king?"
But still he would not smile. "Yes. If I were king. I'm serious. Absolutely.
In all this world there is no one who cares a damn about me. Not in this world, but...."
He checked himself. He went on, "You are the same. You have no relatives?"
"No. None that ever think of me."
"Nor a sweetheart. Or have you?"
"No," I smiled. "Not yet. Maybe never."
"But you are too interested in Wall Street to leave it for the open road?" He was sarcastic now.
"Or do you fear deeds of daring? Do you want to right a great wrong? #{goal(main_character)}? Or do you want to go down to work as usual in the subway to-morrow morning? Are you afraid that in this process of becoming henchman to a king you may perchance get killed?"
I matched his caustic tone. "Let's hear it, #{name(main_character)}."



END
