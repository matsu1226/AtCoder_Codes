N =gets.chomp.to_i
current_t,current_x,current_y = 0,0,0

N.times do
  t,x,y = gets.chomp.split(" ").map(&:to_i)
  # print "#{t},#{x},#{y} \n"

  time_diff = t - current_t
  abs_sum = (x-current_x).abs + (y-current_y).abs   # abs=> 絶対値
  
  if time_diff >= abs_sum && (time_diff - abs_sum).even?
    # puts "OK"
    current_t = t
    current_x = x
    current_y = y
  else
    print "No"
    exit
  end
end

print "Yes"