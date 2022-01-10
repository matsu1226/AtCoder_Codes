n,m = gets.chomp.split.map(&:to_i)
arr = Array.new(n) { [] }   
# Array.new(n, []) とすると、全ての[]が同一とみなされて参照される

m.times do |i|
  a,b = gets.chomp.split.map(&:to_i)
  arr[a-1] << b
  arr[b-1] << a
end

ans = 0
n.times do |i|
  smaller_num = 0
  arr[i].each { |j| smaller_num += 1 if j < i + 1 }
  ans += 1 if smaller_num == 1
end

puts ans