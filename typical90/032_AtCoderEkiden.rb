n = gets.to_i
a_arr = Array.new(n){ gets.split.map(&:to_i) }
# print "a_arr:#{a_arr} \n"

m = gets.to_i

# rumor_arr => trueである組合せを除外したい
rumor_arr = Array.new(n){ Array.new(n, false) }
m.times do
  u = gets.split.map(&:to_i) 
  rumor_arr[u[0] - 1][u[1] - 1] = true
  rumor_arr[u[1] - 1][u[0] - 1] = true
end
# print "rumor_arr:#{rumor_arr}  \n"

MIN = 1000000
min = MIN

# 要素数nの順列を生成 https://docs.ruby-lang.org/ja/latest/method/Array/i/permutation.html
# ex)n=3のとき => [0, 1, 2][0, 2, 1][1, 0, 2][1, 2, 0][2, 0, 1][2, 1, 0]
# この配列は[第1区間, 第2区間, 第3区間] の走者iを示す。

(0..n-1).to_a.permutation(n) do |x|   # 走者順を示す配列xごとに考えていく
  t = a_arr[x[0]][0]    # x[0]の走者が第1区間を走るタイムをtに代入
  # print "t:#{t}  \n"
  i = 1
  while i < n     # x[i](i=1,2,...n)の走者毎に考えていく
    if rumor_arr[x[i]][x[i - 1]]  # x[1]の走者とx[0]の走者の組合せが可能でないなら
      t = MIN                     # xの走者順は不成立
      break
    end
    t += a_arr[x[i]][i]   # x[1]の走者が第2区間(i=1のとき)を走るタイムをtに加算
    i += 1
  end

  min = t if min > t
end

puts min == MIN ? -1 : min

# https://atcoder.jp/contests/typical90/submissions/26942917