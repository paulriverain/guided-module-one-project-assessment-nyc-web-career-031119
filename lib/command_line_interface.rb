def welcome
  puts "Welcome user!"
end

def get_user_name
  puts "Please choose a user name:"
  user_name = gets.chomp
end

def check_user_name(user_name)
  if User.find_by(user_name: user_name)
    puts "Welcome back #{user_name}!"
    get_confirmation_for_deleting_user(user_name)
  else
    puts "Welcome to Trivia!"
    User.create(user_name: user_name)
  end
end

def get_confirmation_for_deleting_user(user_name)
  puts "Do you want to continue with your current account or start a new account?"
  puts "Starting a new account will delete your current progress"
  puts "1 - Continue with current account"
  puts "2 - Start new account"
  answer = gets.chomp
    if answer == "2"
      User.destroy(User.find_by(user_name: user_name).id)
      User.create(user_name: get_user_name)
      puts "You did it!"
    end
end

def start_trivia
  puts "Are you ready to start playing? [Y/N]"
  start_game = gets.chomp
  if start_game.downcase == "y" || start_game.downcase == "yes"
    # puts "this working?"
    # get_number_of_questions
  else
    # start_trivia
    exit 
  end
end

def get_number_of_questions
#tell user to input an integer between 1 to 50 (inclusive)
  puts "How many questions would you like to waste your time with? (1-10)"
  num_of_questions_variable = gets.chomp
  if num_of_questions_variable.to_i >= 1 && num_of_questions_variable.to_i <= 10
    num_of_questions_variable.to_i
  else
    puts "Numbers between 1 and 10 dipwad"
    get_number_of_questions
  end
end

def get_type_of_questions
#tell user to input question type (1-multiple, 2-boolian, 3-both)
  puts "Choose a question type: [1, 2, or 3]"
    puts "1- Multiple Choice"
    puts "2- True/False"
    puts "3- Both"
  question_type_variable = gets.chomp
  if question_type_variable == "1"
    "multiple"
  elsif question_type_variable == "2"
    "boolean"
  elsif question_type_variable == "3"
    nil
  else
    puts "Hey, you goofed, please select 1, 2, or 3"
    get_type_of_questions
  end
end



def exit
  # if start_game == 'exit'|| question_type_variable == 'exit' || user_name  == 'exit' || answer == 'exit'
  #   break
  # end
  puts "Thanks for playing!"
end

def save_cahricter_stats

end


def question_countdown

end



def multiple_choice_or_boolean

end