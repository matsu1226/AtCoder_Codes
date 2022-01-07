X = 46
n = gets.to_i
a = Array.new(X, 0)
b = Array.new(X, 0)
c = Array.new(X, 0)

a_arr = gets.split.map{|i| i.to_i % 46}
b_arr = gets.split.map{|i| i.to_i % 46}
c_arr = gets.split.map{|i| i.to_i % 46}

a_arr.each{|i| a[i] += 1}
b_arr.each{|i| b[i] += 1}
c_arr.each{|i| c[i] += 1}

ans = 0
X.times do |i|
  X.times do |j|
    X.times do |k|
      if (i + j + k) % 46 == 0
        ans += a[i] * b[j] * c[k]
      end
    end
  end
end

puts ans

# ↓別解
# n = gets.to_i
# a, b, c = $<.map{|e|e.split.map{_1.to_i % 46}.tally}
# p a.keys.product(b.keys, c.keys).sum{
#     (_1 + _2 + _3) % 46 == 0 ? a[_1] * b[_2] * c[_3] : 0
# }


# ↓O(N*3)でTLE...
# count = 0
# (0..n-1).each do |i|
#   (0..n-1).each do |j|
#     (0..n-1).each do |k|
#       count += 1 if (a_arr[i] + b_arr[j] + c_arr[k]) % 46 == 0
#     end
#   end
# end

# puts count 

# https://atcoder.jp/contests/typical90/submissions/27759800
# https://atcoder.jp/contests/typical90/submissions/24703356