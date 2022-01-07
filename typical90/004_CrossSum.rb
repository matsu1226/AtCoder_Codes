H,W = gets.split(" ").map(&:to_i)

a = Array.new(H) { gets.split(" ").map(&:to_i) }
# [[A11,A12,A13,...A1W], [A21,A22,...A2W], ... [AH1,AH2,...AHW]]

# puts H
# puts W
# print "Array_a => #{a} \n"

sum_row = a.map(& :sum)
sum_col = a.transpose.map(& :sum)
# https://docs.ruby-lang.org/ja/latest/method/Array/i/sum.html
# https://docs.ruby-lang.org/ja/latest/method/Array/i/transpose.html

print "sum_row => #{sum_row} \n"
print "sum_col => #{sum_col} \n"

i=0
while i < H
  j=0
  b = []
  while j < W
    b << sum_row[i] + sum_col[j] - a[i][j]
    j += 1
  end
  puts b.join(" ")
  i += 1
end