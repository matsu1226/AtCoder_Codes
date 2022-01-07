n = gets.to_i
s_arr = []
n.times do |i|
  s_arr << gets.chomp.to_s
end
s_hash = s_arr.tally
puts s_hash.key(s_hash.values.max)
# puts hash.each { |k, v| puts k if v == hash.values.max }

# https://www.webdevqa.jp.net/ja/ruby/%E6%9C%80%E5%A4%A7%E5%80%A4%E3%83%8F%E3%83%83%E3%82%B7%E3%83%A5%E3%81%AE%E3%82%AD%E3%83%BC%E3%82%92%E8%A6%8B%E3%81%A4%E3%81%91%E3%82%8B%E6%96%B9%E6%B3%95%E3%81%AF%EF%BC%9F/972726590/