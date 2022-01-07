sum1 = [0]
sum2 = [0]

# 累和の配列を用意しておく
n = gets.chomp.to_i
n.times do |i|
  c,point = gets.chomp.split.map(&:to_i)
  if c == 1
    sum1 << sum1[i] + point
    sum2 << sum2[i]
  else
    sum1 << sum1[i]
    sum2 << sum2[i] + point
  end
end

q = gets.chomp.to_i
q.times do |i|
  l,r = gets.chomp.split.map(&:to_i)
  a = sum1[r] - sum1[l-1]
  b = sum2[r] - sum2[l-1]
  puts [a, b].join(" ")
end
