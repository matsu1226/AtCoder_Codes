n = gets.chomp.to_i
arr = gets.chomp.split.map(&:to_i)
print "arr #{arr} \n"
double_arr = arr + arr

# arrを二倍にして、境界の組合せも考慮する
print "double_arr #{double_arr} \n"

# class Rational => 「1/3」のような有理数を扱う
# https://docs.ruby-lang.org/ja/latest/class/Rational.html
X = Rational(arr.sum, 10)   # 求めたい数値

l = r = ~n 
v = double_arr[0]
print "r:#{r},l:#{l},v:#{v} \n"

while r < 2 * n  && l < 2 * n
  if v == X
    puts "Yes"
    exit
  end

  if r - l + 1 > n  # arrよりも切り取る個数が多くなった場合
    v -= double_arr[l]
    l += 1
    print "r:#{r},l:#{l},v:#{v} \n"
  elsif v > X       # 求めたい数値よりもvが大きくなった場合
    v -= double_arr[l]
    l += 1
    print "r:#{r},l:#{l},v:#{v} \n"
  elsif r == 2 * n - 1  # 右端がdouble_arrの最後まできた場合
    v -= double_arr[l]
    l += 1
    print "r:#{r},l:#{l},v:#{v} \n"
  else                  # その他(制約がない場合  => 右端を右にずらす)
    r += 1
    v += double_arr[r]
    print "r:#{r},l:#{l},v:#{v} \n"
  end
end

puts "No"




# https://atcoder.jp/contests/typical90/submissions/26424519