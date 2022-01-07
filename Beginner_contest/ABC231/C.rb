n,q = gets.chomp.split.map(&:to_i)
a_arr = gets.chomp.split.map(&:to_i).sort
# print "a_arr => #{a_arr} \n"

q.times do |i|
  x = gets.chomp.to_i
  # print "x_#{i} => #{x} \n"
  idx = a_arr.bsearch_index {|j| j >= x }
  idx = n if idx.nil?
  # print "idx_#{i} => #{idx} \n"
  puts n-idx
end