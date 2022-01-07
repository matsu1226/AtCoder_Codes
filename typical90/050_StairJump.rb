# 動的計画法 => 漸化式を使って解く
n,l =  gets.chomp.split.map(&:to_i)
dp = Array.new(n+1, Float::INFINITY)

(0..n).each do |i|
  if i == 0
    dp[i] = 1
  elsif i < l
    dp[i] = dp[i-1]
  else
    dp[i] = dp[i-1] + dp[i-l]
  end
end

puts (dp[n] % (10 ** 9 + 7) )