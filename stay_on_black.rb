# ARRAYS =======================

black = [2, 4, 6, 8, 10, 11, 13, 15, 17, 20, 22, 24, 26, 28, 29, 31, 33,
35]
red = [1, 3, 5, 7, 9, 12, 14, 16, 18, 19, 21, 23, 25, 27, 30, 32, 34,
36]
zero = [0, 37] # 37 is the equivalent of "00"

bank = 150
max_bank = 0

base_bet = 2

bet = base_bet

until bank <= 0
  if bet > base_bet * 2 ** 4
    bet = base_bet * 2 ** 4
  end
  num = rand(38)
  if black.include?(num)
    bank += bet
    bet = base_bet
  elsif zero.include?(num)
    bank -= (bet / 2)
    bet *= 2
  else
    bank -= bet
    bet *= 2
  end
  puts bank
  max_bank = bank if bank > max_bank  
end

puts max_bank