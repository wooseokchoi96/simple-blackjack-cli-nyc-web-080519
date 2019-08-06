def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(my_sum)
  puts "Your cards add up to #{my_sum}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(my_sum)
  puts "Sorry, you hit #{my_sum}. Thanks for playing!"
end

def initial_round
  first_card = deal_card
  second_card = deal_card
  sum = first_card + second_card
  display_card_total(sum)
  return sum
end

def hit?(current_total)
  prompt_user
  response = get_user_input
  while response != "h" && response != "s"
    invalid_command
    prompt_user
    response = get_user_input
  end
  if response == "h"
    current_total += deal_card
  end
  current_total
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome 
  current_total = initial_round
  until current_total > 21
    current_total = hit?(current_total)
    display_card_total(current_total)
  end
end_game(current_total)
end
    
