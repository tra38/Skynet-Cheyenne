class Character
attr_reader :purpose, :motivation, :methodology, :evaluation, :enemy, :total
  def initialize
    @total = @purpose+@motivation+@methodology+@evaluation
    post_initialize
  end

#Metaprogramming is the process of writing code that writes code. This
#specific "metaprogramming" code writes the following method for each
#"instance variable" in its list:
#def random_#{array}
#   @array.sample
#end
#It makes 5 methods in only 3 lines! Note that I had to "get" the value of
#the instance variable, before I could use the 'sample' method. If I tried
#to access "@#array" directly, Ruby will scream at you for trying to use
#sample on a string. Sample can only be used on arrays, which is why I have to
#get the value of that instance variable (which happens to be an array).
  ["purpose", "motivation", "methodology", "evaluation", "total"].each do |array|
    define_method("random_#{array}") { instance_variable_get("@#{array}").sample }
  end

end

class Protagonist < Character #the "Hero", the guy who wants stuff done
def post_initialize
  @purpose = ["Knowledge", "Actuality"]
  #Knowledge - dogmatism and slavish adherence to "orthodoxy"
  #Actuality - knows how the world really is
  
  @motivation = ["Consider", "Pursuit"]
  #Consider - will latch onto a goal and refuse to let it go!
  #Pursuit - drive to go after a goal or a hated enemy 
  
  @methodology = ["Certainty", "Proaction"]
  #Certainity - is 100% sure his action will lead to the correct outcome
  #Proaction - a self-starter who will take action...even without all the facts!
  
  @evaluation = ["Proven", "Effect"]
  #Proven - believes that his ideas are correct because they have been shown to be correct multiple times.
  #Effect - cares about how to solve the problem, and does not worry about what caused the problem in the first place!
  
  @enemy = Antagonist
  end
end

class Antagonist < Character #the "Villian", the guy standing in the way of the Protagonist
  def post_initialize
    @purpose = ["Thought", "Perception"]
    #Thought - Free-thinker, able to consider an issue from multiple perspectives
    #Perception - knows only what the world SEEMS to be
    
    @motivation = ["Reconsider", "Avoid"]
    #Reconsider - will periodically reassess whether the current goal is the correct course of action
    #Avoid - desires to escape whoever is chasing him (usually the Protagonist)
    
    @methodology = ["Potentiality", "Reaction"]
    #Potentiality - is unsure whether his action will lead to the correct outcome, but will still take risks when necessary
    #Reaction - will wait until a crisis occurs, and then responds accordingly 
    
    @evaluation = ["Unproven", "Cause"]
    #Unproven - believes that his ideas may still be actually wrong, no matter how many previous tests are done
    #Cause - cares about addressing the root causes of the problem, and ignores the actual problem.
    
    @enemy = Protagonist
  end
end

class Contagonist < Character #The Tempter, out to convince others to join the "dark side"
  def post_initialize
    @purpose = ["Inequity", "Speculation"]
    #Inequity - promotes unfairness or imbalance
    #Speculation - prepares for all potential and possible ouctomes
    
    @motivation = ["Temptation", "Hinder"]
    #Temptation - embrace immedidate benefits, without worrying about the future consequences
    #Hinder - undermining somebody else's plans, either intentionally or by accident
    
    @methodology = ["Production", "Reevaluation"]
    #Production - determines what the current situation is by ruling out what explainations are "impossible"
    #Reevaluation - continually reexamines and reinterprets the current situation
    
    @evaluation = ["Determination","Unending"]
    #Determination - uses inferences to draws conclusions
    #Unending - believes that Society can live forever and will live forever
    
    @enemy = Guardian

  end
end

class Guardian < Character #The Moral Conscience, out to guide others to the "light side"
  def post_initialize
    @purpose = ["Equity", "Projection"]
    #Equity - promotes fairness and balance
    #Projection - prepares for the most likely and probable outcomes
    
    @motivation = ["Conscience", "Help"]
    #Conscience - forgoing immedidate benefits, because of future consequences
    #Help - helping somebody else's plans, either intentionally or by accident
    
    @methodology = ["Reduction", "Evaluation"]
    #Reduction - determines what the current situation is by weighing odds carefully and choosing the most likely explaination
    #Evaluation - interprets the current situation to determine its meaning, and then sticks to that interpertion
    #forever.
    
    @evaluation = ["Expectation", "Ending"]
    #Expectation - anticipiates what is going to happen in the future
    #Ending - believes that Society will end and is concerned about the aftermath
    
    @enemy = Contagonist
  end
end

class Reason < Character #the "Spock", uses logic and rationality in desicion-making
  def post_initialize
    @purpose = ["Ability", "Aware"]
    #Ability - competent at an assigned task
    #Aware - knows about things outside of himself
    
    @motiviation = ["Logic","Control"]
    #Logic - uses rationality to understands the world
    #Control - focused, deliberate actions
    
    @methodology = ["Probablity","Inaction"]
    #Probablity - only believes in only what is likely
    #Inaction - prefers to take no action
    
    @evaluation = ["Theory","Trust"]
    #Theory - wants to develop a fully-formed casual relationship to explain what is going on, and refuses to accept
    #irrational appeals to "common sense"
    #Trust - accepts without any proof (if it is logically follows from the theory, then it must be true!)
    
    @enemy = Emotion

  end
end

class Emotion < Character #uses passion and intuition in desicion-making
  def post_initialize
    @purpose = ["Desire","SelfAware"]
    #Desire - wants to improve society
    #Self-Aware - knows about his own self
    
    @motivation = ["Feeling","Uncontrolled"]
    #Feeling - can emotionally sense if something or someone is "right"
    #Uncontrolled - will spend all his energy in all directions at once  
    
    @methodology = ["Possibility","Protection"]
    #Possibility - believes in what is possible
    #Protection - will take action to defend himself from possible threats

    @evaluation = ["Hunch","Test"]
    #Hunch - uses intuition to determine what is going on, without need for such petty things like actual evdience
    #Test - wants to conduct trials and investigations to determine if something is true (using those oh-so-reliable hunches)
    
    @enemy = Reason
    
  end
end

class Sidekick < Character #a die-hard supporter of another character's actions and goals
  def post_initialize
    @purpose = ["Order","Inertia"]
    #Order - Supports stability and organization
    #Inertia - Preference for the status quo
    
    @motivation = ["Faith","Support"]
    #Faith - accepts something as certain without need for any sort of proof (emotional or logical)
    #Support - providing indirect assistance to another character
    
    @methodology = ["Deduction","Acceptance"]
    #Deduction- uses deductive reasoning
    #Acceptance - will tolerate change and adapt to them
    
    @evaluation = ["Accurate","Result"]
    #Accurate - within acceptable tolerances, "good enough"
    #Result - cares about the outcomes and consequences of actions
    
    @enemy = Skeptic

  end
end

class Skeptic < Character #the "Doubter", thinks his boss does not know what he is doing
  def post_initialize
     @purpose = ["Chaos","Change"]
    #Order - Supports random change and disorder
    #Change - Wants the status quo overturned
    
    @motivation = ["Disbelief","Oppose"]
    #Disbelief - actively disbelieves in something, and tries to inform the whole world about how much he disbelieves
    #Oppose - indirectly speaks out against another person's efforts
    
    @methodology = ["Induction","Nonacceptance"]
    #Induction - uses deductive reasoning
    #Nonacceptance - will refuse to accept change
    
    @evaluation = ["Nonaccurate","Process"]
    #Nonaccurate - no acceptable tolerances, perfectionism
    #Process - cares about making sure actions are done properly, with no worry about the consequences of said action.
    
    @enemy = Sidekick

  end
end
