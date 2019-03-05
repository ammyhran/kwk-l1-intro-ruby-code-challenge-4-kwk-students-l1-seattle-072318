def least_coins(cents)

least_coins = {
  :quarters => 0,
  :dimes => 0,
  :nickels => 0,
  :pennies => 0
}

quarters = cents / 25
if quarters == 0
  least_coins[:quarters] = 0
elsif quarters != 0
  least_coins[:quarters] = quarters
  cents = cents - (quarters * 25)
end
    
dimes = cents / 10 
if dimes == 0 
  least_coins[:dimes] = 0
elsif dimes != 0
  least_coins[:dimes] = dimes
  cents = cents - (dimes * 10)
end 
   
nickels = cents / 5 
if nickels == 0 
  least_coins[:nickels] = 0 
elsif nickels != 0 
  least_coins[:nickels] = nickels
  cents = cents - (nickels * 5)
end
    
least_coins[:pennies] = cents

puts least_coins
end

least_coins(132)



