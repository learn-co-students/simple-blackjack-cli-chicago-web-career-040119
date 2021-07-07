def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  init_card_sum = deal_card + deal_card
  display_card_total(init_card_sum)
  init_card_sum
end

def hit?(initial_round)
  card_sum = initial_round
  prompt_user
  input = get_user_input
  if input == "h"
    card_sum += deal_card
  elsif input == "s"
    card_sum = card_sum
  else
    invalid_command
    prompt_user
  end
  card_sum
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  card_total = initial_round
  until card_total > 21
    card_total = hit?(card_total)
    display_card_total(card_total)
  end
  end_game(card_total)
end
