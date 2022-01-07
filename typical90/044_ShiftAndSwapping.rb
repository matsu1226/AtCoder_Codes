n,q = gets.split.map(&:to_i)
a_arr = gets.split.map(&:to_i)
# print "a_arr: #{a_arr} \n"

shift_count = 0
idx = 0

q.times do |i|
  t,x,y = gets.split.map(&:to_i)
  # print "t,x,y: #{t},#{x},#{y} \n"
  case t
  when 1
    a_arr[x-1-idx],a_arr[y-1-idx] = a_arr[y-1-idx],a_arr[x-1-idx]
  when 2
    shift_count += 1
    idx = shift_count % n
  when 3
    puts a_arr[x-1-idx]
  end
end