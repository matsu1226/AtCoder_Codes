# 集合ライブラリ(nearly Array, but no duplicate)
require 'set'
n = gets.chomp.to_i

s_set = Set.new
print "s_set => #{s_set} \n"

n.times do |i|
  s = gets.chomp
  puts i + 1 if s_set.add?(s)
  # add? は、集合に要素が追加された場合には self を、変化がなかった場合には nil を返します
  # https://docs.ruby-lang.org/ja/latest/class/Set.html#I_--3C--3C
  print "s_set => #{s_set} \n"
end


# names = []
# n.times do |i|
#   name = gets.chomp.to_s
#   if !names.include?(name)
#     names << name
#     puts i + 1
#     # print "names => #{names} \n"
#   end
# end

# 参照（他の方の回答）
# https://atcoder.jp/contests/typical90/submissions/27927196