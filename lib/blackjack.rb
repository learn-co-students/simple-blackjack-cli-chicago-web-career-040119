def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  random = 1 + rand(11)
  return random
end

def display_card_total(card_total)
  # code #display_card_total here
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"

end

def get_user_input
  # code #get_user_input here
  answer = gets.chomp
  return answer
end

def end_game(card_total)
  # code #end_game here
   puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  sum = deal_card + deal_card
  display_card_total(sum)
  return sum
end

def hit?(card_total)
  # code hit? here
  prompt_user
  input = get_user_input
  if input == 's'
      card_total
  elsif input == 'h'
      number_returned = deal_card
      card_total += number_returned
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
  # welcome the user
  welcome
  # deal their first two cards
  card_total = initial_round
  until card_total > 21
    card_total = hit?(card_total)
    display_card_total(card_total)
  end
  # if their card exceeds 21, the game ends
end_game(card_total)
end
