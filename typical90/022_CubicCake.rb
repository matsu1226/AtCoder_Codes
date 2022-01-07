a,b,c = gets.chomp.split(" ").map(&:to_i)

common_divisor = a.gcd(b).gcd(c)

count_a = a / common_divisor -1   # 切る回数なので"-1"
count_b = b / common_divisor -1
count_c = c / common_divisor -1

print "#{count_a + count_b + count_c} \n"