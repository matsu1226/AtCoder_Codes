n,k = gets.chomp.split.map(&:to_i)
score_sort_arr = []

n.times do
  a,b = gets.chomp.split.map(&:to_i)
  score_sort_arr << [a - b, b]
end
puts score_sort_arr.flatten.sort.reverse.take(k).sum
