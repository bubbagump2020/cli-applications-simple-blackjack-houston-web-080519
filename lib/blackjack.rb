def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  random_number = rand (1..11)
  return random_number
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  user_input = gets.chomp
  return user_input
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  card_sum = deal_card + deal_card
  display_card_total(card_sum)
  return card_sum
end

def hit?(card_total)
  prompt_user
  user_input = get_user_input
  if user_input == "s"
    # return the value unchanged.
    card_total
  elsif user_input == "h"
    card_total += deal_card
  else
    invalid_command
  end
 return card_total
end    


def invalid_command
  puts "Please enter a valid command"
  prompt_user
  get_user_input
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  initial_round
  card_total = 0
  
  until card_total > 22
    hit?(card_total)
    
end
    
