require 'set'   
# 集合classライブラリ。今回はadd?を使うために導入。
# https://docs.ruby-lang.org/ja/latest/class/Set.html#I_--3C--3C

# 追加,削除,検索のみで値重複しないならset(処理が高速)。
# それ以外はArray
# refference => https://muramurasan.hatenablog.jp/entry/2017/02/13/120000

n = gets.to_i

s_set = Set.new
n.times do |i|
  p i+1 if s_set.add? gets.chomp 
  # add?(o) -> self(正常に追加) | nil(同じ要素があって、集合に変化がなかった時)
end


# ↑387 ms / ↓1104 ms(TLE)
# n = gets.chomp.to_i

# s_arr = []
# (1..n).each do |i|
#   s_i = gets.chomp.to_s
#   puts "#{i}" unless s_arr.include?(s_i)
#   s_arr << s_i
# end