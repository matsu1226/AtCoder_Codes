a,b,c = gets.chomp.split.map(&:to_i)
# 最大公約数（＝切った後のケーキの一片の長さ）
n = a.gcd(b).gcd(c)   

count = 0
[a,b,c].each do |i|
  count += i / n -1
end

puts count