# 階差に注目
n,q = gets.chomp.split.map(&:to_i)
a = gets.chomp.split.map(&:to_i)
print "a#{a} \n"
b = []
(n-1).times do |i|
  b << a[i+1] - a[i]
end
print "b#{b} \n"
print "====== \n"

q.times do
  e = 0
  l,r,v = gets.chomp.split.map(&:to_i)
  print "l#{l} \n"
  print "r#{r} \n"
  print "v#{v} \n"

  b[l-2] += v if l != 1
  b[r-1] -= v   if r != n

  print "b#{b} \n"  
  puts b.inject{|e, i| e + i.abs}
  print "====== \n"  

end

# https://atcoder.jp/contests/typical90/submissions/27804233