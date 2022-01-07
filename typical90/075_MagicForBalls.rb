require 'prime'
n = gets.to_i

prime_count = Prime.prime_division(n).map(&:last).sum

puts Math.log2(prime_count).ceil

# ceil https://docs.ruby-lang.org/ja/latest/method/Float/i/ceil.html
# log2 https://docs.ruby-lang.org/ja/latest/method/Math/m/log2.html