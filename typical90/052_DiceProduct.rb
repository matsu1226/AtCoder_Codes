n = gets.chomp.to_i

# arr = []
# n.times do |i|
#   arr << gets.chomp.split.map(&:to_i).sum
# end

# puts arr.inject(&:*) % (10 ** 9 + 7)

ans = 1
n.times do |i|
  ans *= gets.chomp.split.map(&:to_i).sum
end

puts ans % (10 ** 9 + 7)