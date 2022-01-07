h,w = gets.chomp.split.map(&:to_i)

arr = []
h.times { arr << gets.chomp.split.map(&:to_i) }

# print "arr => #{arr} \n"

sum_row = arr.map(&:sum)
sum_col = arr.transpose.map(&:sum)

# print "sum_row => #{sum_row} \n"
# print "sum_col => #{sum_col} \n"

h.times do |i|
  b_row_arr = []
  w.times do |j|
    b_row_arr << sum_col[j] + sum_row[i] - arr[i][j]
  end
  puts b_row_arr.join(" ")
end
