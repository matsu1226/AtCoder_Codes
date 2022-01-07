n,p,q = gets.chomp.split.map(&:to_i)
a = gets.chomp.split.map{|i| i.to_i % p}
arr_a = a.combination(5).to_a

ans = 0
arr_a.each do |arr|
  ans += 1 if arr.inject{|result, item| result * item % p } == q
end

puts ans