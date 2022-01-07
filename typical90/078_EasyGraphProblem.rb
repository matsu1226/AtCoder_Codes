n,m = gets.chomp.split.map(&:to_i)

arr = Array.new(n, 0)

m.times do
  a,b = gets.chomp.split.map(&:to_i).sort
  arr[b-1] += 1
end

print arr.count(1)