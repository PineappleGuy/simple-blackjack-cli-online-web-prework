def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  rand(1..11)

end

def display_card_total(card_total)
  # code #display_card_total here

  puts "Your cards add up to #{card_total}"
  card_total

end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets.chomp

end

def end_game(card_total)
  # code #end_game here
puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  x = deal_card
  y = deal_card
  card_total = x + y
  display_card_total(card_total)
end

def hit?(number)
  # code hit? here
  prompt_user
  x = get_user_input
  if x == "h"
    deal_card + number
  elsif x == "s"

  else
    invalid_command
  end
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
  prompt_user
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  total = 0
  welcome
  initial_round
  until total > 21
  hit?
  display_card_total
end

end
