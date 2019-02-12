def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  return rand 1..11
end

def display_card_total(total)
  # code #display_card_total here
  puts "Your cards add up to #{total}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  answer =  gets.chomp
  return answer
end

def end_game(total)
  # code #end_game here
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  total  = deal_card + deal_card
  display_card_total(total)
return total
end

def hit?(total)
  # code hit? here
  prompt_user
  input = get_user_input
  if  input == 's' 
    return total
  elsif input == 'h'
    new_card = deal_card
    total += new_card
  else 
    invalid_command
  end
  end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
  get_user_input
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
 welcome
# first 2 cards total
 total = initial_round
#  ask if hit or stay
 until total > 21
    total = hit?(total)
    display_card_total(total)
  end
  # if their card exceeds 21, the game ends
end_game(total)
end

    
