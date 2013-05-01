# ARRAYS =======================

black = [2, 4, 6, 8, 10, 11, 13, 15, 17, 20, 22, 24, 26, 28, 29, 31, 33,
35]
red = [1, 3, 5, 7, 9, 12, 14, 16, 18, 19, 21, 23, 25, 27, 30, 32, 34,
36]
zero = [0, 37] # 37 is the equivalent of "00"

# VARIABLES ===================

bk = 0
rd = 0
zr = 0

# # OF ROLLS ==================

puts 'How many rolls to simulate'
number_of_rolls = gets.chomp.to_i

# THE LOOP ====================

(0..number_of_rolls).each do
  num = rand(38)
  bk += 1 if black.include?(num)
  rd += 1 if red.include?(num)
  zr += 1 if zero.include?(num)
end

puts bk
puts rd
puts zr