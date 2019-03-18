require 'pry'

def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(score)
  puts "Your cards add up to #{score}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(score)
  puts "Sorry, you hit #{score}. Thanks for playing!"
end

def initial_round
  score = deal_card
  score += deal_card
  display_card_total(score)
  return score
end

def hit?(score)
  prompt_user
  input = get_user_input
  #binding.pry
  case input

    when "h"
      score += deal_card
    when "s"
      score + 0
    else
      invalid_command
  end
  return score
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  pscore = initial_round

  newscore = pscore
  until newscore >= 21
    newscore = hit?(newscore)
    display_card_total(newscore)
  end

  end_game(newscore)

end
