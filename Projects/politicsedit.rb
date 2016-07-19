#ricardo edit =)
def call_the_cops #method for any time the user refuses to go along with Frank's crazy.  implements a random strategy for the comptuer choosing whether or not the user... well... ends up like Zoe Barnes
  puts "----"
  puts "\n🇺🇸 What a pity.  And here I thought we could work together."
  puts "\n🚈🚈🚈🚈🚈🚈🚈🚈🚈🚈🚈🚈🚈🚈🚈🚈🚈🚈🚈🚈🚈  *nyoooooooom*"
  random = rand(1...6)
  if (random <= 3)
    puts "----"
    puts "\n💻 Oh.  Wow.  This is awkward.  You're sort of... dead...  Yeah, sorry about that.  Getting hit by a train can't feel great.  Well... there's a reason his initials are FU, I guess. 😰"
    puts "\n"
    start_over
  else
    puts "----"
    puts "\n💻 Hey!  You survived!  Totally not sure how, but you did.  And good news!  FU was impeached.  And incarcerated.  Because it's kind of bad to push people in front of metro trains.  You know, frowned upon in civilized society and all that.  (And the US Government paid your hospital bills!  Probably to get you not to sue them...)  Thanks for playing!  Feel better!"
    puts "\n"

    start_over
  end
end


def freedom #method for when the user finishes the game, doing Frank's bidding the entire time
  puts
  puts "----"
  puts "\n🇺🇸 Competence is such an exotic bird in these woods that I appreciate it whenever I see it."
  puts "\n🂬 This is a ticket for a flight out of Dulles.  Your plane leaves in three hours.  You better pack..."
  puts "----"
  puts "\n💻 Hey!  You survived being blackmailed by The President of the United States!  Congrats!  Now you get to live out your days hopping between countries that won't officially let the CIA go and grab you.  Probably best to keep your eyes open, though.  Technically, now YOU'RE the loose end... But, hey, no worries in the meantime - don't miss your flight! 🛫"
  puts "\n"
  puts
  start_over
end

def eliminate #method for if user chooses to make Lucas disappear
  puts "\n💻 Your freedom is more important.  It's not the first time you've done this.  Though when you meet Doug to confirm the hit, it feels worse than it used to."
  puts
  puts "\n🂬 Good.  I'll be in touch."
  freedom
end

def one_else #method for random input for eliminate/warn lucas
  puts
  puts "\nYou can't just sit idly by - a man's life is in your hands.  What do you do?  ELIMINATE Lucas or WARN Lucas?"
  lucas = gets.chomp.downcase.split
  if lucas.include?("eliminate")
    eliminate
  elsif lucas.include?("warn")
    puts
    puts "\n🇺🇸 Any pugilist worth his salt knows when someone's on the ropes.  That's when you throw a combination to the gut and a left hook to the jaw."
    call_the_cops
  else
    puts "\n🇺🇸 You're far too indecisive.  You've been cleved from the heard."
    call_the_cops
  end
end

def one_more #method for one more mission dialogue and question
  puts "----"
  puts "\n💻 Fine.  What do I have to do?"
  puts "\n🂬 I can't tell you how to do your job.  Just make it quick and make it quiet."
  puts "\nDoug turns to leave, but stops before opening the door."
  puts "\n🂬 For someone charged with the crimes leveled against you, I thought you'd be more willing to comply."
  puts "\n💻 What can I say?  I voted for the other guy..."
  puts "\n"
  puts "\n💻 What do you do?  ELIMINATE Lucas or WARN Lucas?"
  lucas = gets.chomp.downcase.split
  if lucas.include?("eliminate")
    eliminate
  elsif lucas.include?("warn")
    puts
    puts "\n🇺🇸 Any pugilist worth his salt knows when someone's on the ropes.  That's when you throw a combination to the gut and a left hook to the jaw."
    call_the_cops
  else
    one_else
  end
end

def choices_go_back #method for else (random input) for one more mission vs. run
  puts "\n💻 You really don't have another choice. One more MISSION, or RUN away."
  choiceschoices = gets.chomp.downcase.split
  if choiceschoices.include?("run")
    call_the_cops
  elsif choiceschoices.include?("mission")
    one_more
  else
    puts
    puts "\n🇺🇸 You're far too indecisive.  You've been cleved from the heard."
    call_the_cops
  end
end

def safehouse #method for if the user went to safehouse (answered something containing "safehouse" vs. "run")
  puts
  puts "----"
  puts "\n🂬 Eliminate him."
  puts "\n💻 Wait, what?!"
  puts "\n🂬 Do what you're told and you'll get your freedom."
  puts "\n💻 I won't.  I can't."
  puts "\n🂬 Do you want to rot in a cell for the rest of your life? When you could be watching the next World Cup in Qatar?"
  puts "\n💻 This is insane!  Let alone illegal."
  puts "\n🂬 And what you did was?  Is that what you called it you when you worked at that Black Site?"
  puts "----"
  puts
  puts "\n💻 One more MISSION, or RUN away?"
  choiceschoices = gets.chomp.downcase.split
  if choiceschoices.include?("run")
    call_the_cops
  elsif choiceschoices.include?("mission")
    one_more
  else
    choices_go_back
  end
end



def find_else #method for else or random case for the safehouse/run question - like most others, will either get the correct input on the second time around from the user or will just implement the ending (call_the_cops) with an added line insinuating why the game ended
  puts
  puts "\n💻 Doug is waiting.  Do you go to the SAFEHOUSE?  Or do you put the car in drive and RUN away, fast and far?"
  answer = gets.chomp.downcase.split
  if answer.include?("safehouse")
    safehouse
  elsif answer.include?("run")
    call_the_cops
  else
    puts
    puts "\n🇺🇸 You're far too indecisive.  You've been cleved from the heard."
    call_the_cops
  end
end


def find_him #method for thought process of player 1 and dialogue with Doug.  prompts question safehouse vs. run
  puts
  puts "----"
  puts "💻 You really don't have a choice.  Your freedom is on the line.  And maybe even your life. \n💻 You find the guy - John Carlyle (formerly Lucas Goodwin, a reporter with what used to sound like a conspiracy theory about Underwood).  Tail him a few days, check in with Doug via a burner phone.  Your instructions are to lay low and try to befriend him. (Because that always ends well...)"
  puts "\n--Weeks Later--"
  puts "\n🂬 I texted you the location of a safehouse.  Drive there and wait for further instructions."
  puts
  puts
  puts "\n💻 Do you go to the SAFEHOUSE?  Or do you put your car in drive and RUN away, fast and far?"
  answer = gets.chomp.downcase.split
  if answer.include?("safehouse")
    safehouse
  elsif answer.include?("run")
    call_the_cops
  else
    find_else
  end

end






def else_cops_find #else/random condition for question find lucas or call cops on Frank/Doug
  puts
  puts "\n💻 Try again.  FIND HIM or CALL THE COPS?"
  user_action = gets.chomp.downcase
  case user_action
  when "find him"
    find_him
  when "call the cops"
    call_the_cops
  else
    puts
    puts "\n🇺🇸 You're far too indecisive.  You've been cleved from the heard."
    call_the_cops
  end
end

def what_to_do #method for initial question after information about game is given - call cops or find Lucas like they are asking
  puts
  puts "----"
  puts "💻 What are you going to do?  FIND HIM or CALL THE COPS? \n \n💻 (...On the President of the United States... because they're totally gonna believe you.)"
  user_action = gets.chomp.downcase
  case user_action
  when "find him"
    find_him
  when "call the cops"
    call_the_cops
  else
    else_cops_find
  end
end

def lets_begin #method for Doug to give instructions, calls what_to_do method that prompts the user for an action response
  puts
  puts "----"
  puts "\n🂬 To be clear, The President is in no way involved in this - it's between you and me.  If you need anything, you come to me.  If you have a problem, you come to me.  You don't step foot in the White House. \n \n🂬 Your first assignment is simple.  We need to monitor a liability.  He was placed in Witness Protection, but we were able to obtain his cell phone number:\n \n"
  i = 1
  while i <= 14
    print i + 2
    i += 2
  end
  puts "\n \n🂬 Find him.  Track him.  I'll be in touch."
  what_to_do
end

def yes_understand #method that runs after a "yes" understand response to the initial agreement to play; if/elsif/else condition below forces the user to continue playing irrispective of choice, but rationalization changes each time
  puts
  puts "----"
  puts "\n🇺🇸 Good.  Welcome to Washington."
  def spiel
    puts "\n🇺🇸 In case you need reminding, you serve at the pleasure of the President of the United States. \n \n🇺🇸 You'll do exactly what I tell you.  You get one chance to serve your country.  One chance to serve me... which is, of course, to serve the people of this great nation. \n  \n🇺🇸 Now understand we can't officially have any connection whatsoever.  Doug filled me in on the particulars.  We'll clear the way.  Cooperate and you'll get to quietly disappear.\n  \n🇺🇸 But if I catch even a wiff of you trying to cross me... I can't begin to describe the ways in which I will destroy you. \n  \n🇺🇸 Do I make myself clear? Yes or No."
  end
  spiel
  clear = gets.chomp.downcase
  if clear == "yes"
    puts
    puts "\n🇺🇸 Good.  Do your job and we won't speak again.  Doug will keep you informed."
    lets_begin


  elsif clear == "no"
    puts
    puts "----"
    puts "\n🇺🇸 I have no respect for quitters.  \n🇺🇸 You're too far involved now, there is no going back.  Tsk tsk.  This would've been so much easier had you cooperated the first time.  When Doug contacts you, answer."
    lets_begin
  else
    puts
    puts "----"
    puts "\n🇺🇸 For your sake, I'll take that as a \"yes.\" Doug will contact you."
    lets_begin



  end
end


def start_over
  puts
  puts "\n💻 Replay? Yes or No"
  start_over_response = gets.chomp.downcase
  case start_over_response
  when "yes"
    beginning_of_game
  when "no"
    puts "\n💻 Thanks for playing!  Please initialize program to run again (hit the up arrow key and then press enter)."
  else
    puts "\n💻 Thanks for playing!  Please initialize program to run again (hit the up arrow key and then press enter)."
  end
end


def return_to_question #else/random condition for initial agreement to play question.  will quit the game by ending the program if user says no or gives yet another random condition under the presumption that the user does not want to play
  puts
  puts "\nDo you understand?  Yes or No?"
  understand = gets.chomp.downcase
  case understand
  when "yes"
    yes_understand
  when "no"
    puts
    puts "\n🇺🇸 Then stay out of my way."
    puts
    puts
    puts
    start_over
  else
    puts
    puts "\n🇺🇸 My time is far too valuable to be wasted by the likes of you."
  end
end

def intro(understand) #initial question as to whether the user wants to play the game; if yes, will continue; no will end the program assuming user doesn't want to play; else will prompt another method return_to_question that will run the question prompt again, but result in a more final response (2 strikes, you're out kind of thing with random responses)
  case understand
  when "Yes"
    yes_understand


  when "No"
    puts
    puts "\n🇺🇸 Then stay out of my way."
    puts
    puts
    puts
    start_over
  else
    puts
    puts "\n🇺🇸 Oh, I'm sorry.  Did you think you had another choice?  Let's try that again.  Yes or No."
      return_to_question
  end
end

def beginning_of_game
  puts "\n🇺🇸 I'm Frank Underwood and I approve this message."
  puts "\n🇺🇸 If at any time you're not up to the task at hand, do me a favor and press 'control' + 'c'.  I require your unwavering dedication."
#puts "\nWelcome to Washington."
  puts "\n🔴  🔴  🔴  🔴  🔴  🔴  🔴  🔴  🔴
        \n⚪️  ⚪️  ⚪️  ⚪️  ⚪️  ⚪️  ⚪️  ⚪️  ⚪️
        \n🔴  🔴  🔴  🔴  🔴  🔵  🔵  🔵  🔵
        \n⚪️  ⚪️  ⚪️  ⚪️  ⚪️  🔵  🔵  🔵  🔵
        \n🔴  🔴  🔴  🔴  🔴  🔵  🔵  🔵  🔵"
        puts "\n🇺🇸 Loyalty.  That's all I ask.  If I have it, you'll go far.  If I don't... well..."
        puts "\n🇺🇸 Do you understand?  Yes or No?"
        understand = gets.chomp.capitalize
        intro(understand)
end
beginning_of_game
