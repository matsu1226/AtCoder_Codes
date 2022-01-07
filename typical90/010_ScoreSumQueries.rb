n = gets.chomp.to_i
sum1,sum2 = [],[]
sum1[0],sum2[0] = 0,0

n.times do |i|
  c,point = gets.chomp.split(" ").map(&:to_i)
  if c == 1 
    sum1 << sum1[i] + point
    sum2 << sum2[i]
  elsif c == 2
    sum1 << sum1[i]
    sum2 << sum2[i] + point
  end
end

# print "sum1:#{sum1} \n"
# print "sum2:#{sum2} \n"

q = gets.chomp.to_i

q.times do |i|
  l,r = gets.chomp.split(" ").map(&:to_i)
  a = sum1[r] - sum1[l-1]
  b = sum2[r] - sum2[l-1]
  print "#{a} #{b} \n"
end

