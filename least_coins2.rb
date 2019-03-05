puts "Welcome to your least coins calculator! Please enter an amount of money in cents."
cents = gets.strip
cents = cents.to_i
def least_coins(cents)
  coins = {
    :quarters => 0,
    :dimes => 0,
    :nickels => 0,
    :pennies => 0
  }
  
  # quarters
while cents >= 25
  coins[:quarters] += 1
  coins = cents - 25
 end 
 
  # dimes
while cents >= 10
  coins[:dimes] += 1
  coins = cents - 10
end

  # nickels
while cents >= 5
  coins[:nickels] += 1
  coins = cents - 5
end

  # pennies
while cents >= 1
  coins[:pennies] += 1
  cents = cents - 1
end

  puts coins
end 

puts least_coins(cents)