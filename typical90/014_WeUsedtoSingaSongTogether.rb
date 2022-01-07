n = gets.chomp.to_i
a_arr = gets.chomp.split.map(&:to_i).sort
b_arr = gets.chomp.split.map(&:to_i).sort

arr = a_arr.zip(b_arr)

puts arr.map{|a,b| (a - b).abs}.inject(:+)
# puts arr.map{|a,b| (a - b).abs}.inject(0){|sum, i| sum + i }

# sum = 0
# n.times do |i|
#   sum += (a_arr[i] - b_arr[i]).abs
# end

# puts sum