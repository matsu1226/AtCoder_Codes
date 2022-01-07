l,r = gets.chomp.split.map(&:to_i)
MOD = 10 ** 9 + 7

# arr = []
# (l..r).each do |i|
#   arr << Array.new(i, i)
# end

# new_arr = arr.flatten.map(&:to_s).inject(:+)
# print "new_arr => #{new_arr} \n"
# puts new_arr.length / (10 ** 9 + 7)

# https://atcoder.jp/contests/typical90/tasks/typical90_cd

def f(x)
  count = 0
  from = 1 
  d  = 1    # 桁数

  while from <= x
    to = [from * 10 - 1, x].min   # from * 10 - 1( =9 )とxの小さいほう
    n = to - from + 1             # n = fromからtoの数字の個数
    c = n * (from + to) / 2
    count += c * d
    count %= MOD
    
    from *= 10
    d += 1
  end

  count
end

ans = (f(r) - f(l - 1)) % MOD