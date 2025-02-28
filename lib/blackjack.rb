require 'pry'

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
  c1 = deal_card
  c2 = deal_card
  card_total = c1 + c2
  display_card_total(card_total)
  card_total
end

def hit?(number)
  prompt_user
  input = get_user_input
  if input != "h" && input != "s"
    invalid_command
    hit?(number)
  elsif input == "h"
    nC = deal_card
    number += nC
  else input == "s"
    number
  end
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
  if card_total < 21 
    card_total = hit?(card_total)
    display_card_total(card_total)
  end
    end_game(card_total)
end
    
