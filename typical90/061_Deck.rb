q = gets.chomp.to_i

arr = []

q.times do |i|
  t,x =gets.chomp.split(" ").map(&:to_i)

  arr.unshift(x)  if t == 1
  arr.push(x)     if t == 2
  puts arr[x-1]   if t == 3
end