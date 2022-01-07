h,w = gets.chomp.split.map(&:to_i)

a = h.times.map{ gets.split.map(&:to_i) }
b = h.times.map{ gets.split.map(&:to_i) }
# a = (0..h-1).map{ gets.split.map(&:to_i) }
# range objectにmapをあてると、arrayに変換して返ってくる

ans = 0

(h-1).times do |y|
  (w-1).times do |x|
    diff = b[y][x] - a[y][x]
    ans += diff.abs             # bとaの差分だけaを変化させる

    a[y][x] += diff
    a[y + 1][x] += diff
    a[y][x + 1] += diff
    a[y + 1][x + 1] += diff
  end
end

if a == b
  puts 'Yes'
  puts ans
else
  puts 'No'
end


# https://atcoder.jp/contests/typical90/tasks/typical90_ca
# https://atcoder.jp/contests/typical90/submissions/25890072
