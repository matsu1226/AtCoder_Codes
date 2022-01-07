n = gets.chomp.to_i
s = gets.chomp

# print "n => #{n} \n"
# print "s => #{s} \n"

a = [0]
b = [0]

(1..n).each do |i|
  if s.slice(i - 1) == "o"
    a << i
    b << b[i - 1]
  else
    a << a[i - 1]
    b << i
  end
end

# print "a => #{a} \n"
# print "b => #{b} \n"

ans = 0
(1..n).each do |i|
  ans += [a[i], b[i]].min
end

puts ans


# https://atcoder.jp/contests/typical90/tasks/typical90_cf

# https://atcoder.jp/contests/typical90/submissions/27203444
# https://atcoder.jp/contests/typical90/submissions/25912179
# https://atcoder.jp/contests/typical90/submissions/25008062