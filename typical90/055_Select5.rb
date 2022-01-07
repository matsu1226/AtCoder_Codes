n,p,q = gets.split(" ").map(&:to_i)
# n = 6, p = 7, q = 2 

# arr = gets.split(" ").map(&:to_i)

# count = 0
# a=0
# n.times do 
#   (n-1).times do 
#     b = a + 1
#     (n-2).times do
#       c = b + 1
#       (n-3).times do
#         d = c + 1
#         (n-4).times do
#           e = d + 1
#           count += 1 if (arr[a]*arr[b]*arr[c]*arr[d]*arr[e] % p == q)
#         end
#       end
#     end
#   end
#   a += 1
# end


ary = gets.split(" ").map(&:to_i).map{|x| x % p }
# 6 7 8 9 10 11=> ary = [6,0,1,2,3,4]

count = 0 
a = 0                               # a = 0の場合
while a < n-4                       # a < 6-4 
  ary_a = ary[a]                    # ary_a = 6
  b = a + 1                         # b = 1
  while b < n-3                     # b < 6-3
    ary_b = ary_a * ary[b] % p      # ary_b = 6 * 0 % 7 = 0
    c = b + 1                       # c = 2
    while c < n-2                   # c < 6-2
      ary_c = ary_b * ary[c] % p    # ary_c = 0 * 1 % 7 = 0
      d = c + 1                     # d = 3
      while d < n-1                 # d < 6-1
        ary_d = ary_c * ary[d] % p  # arr_d = 0
        e = d + 1                   # e = 4
        while e < n                 # e < 6
          if (ary_d * ary[e]) % p == q    # (0 * 3 )% 7 == 2 ? =>false
            count += 1
          end
          e += 1
        end
        d += 1
      end
      c += 1
    end
    b += 1
  end
  a += 1
end

puts count


# too slow! ↓
# arr_a = a.combination(5).to_a 

# product_arr = arr_a.map { |arr| arr.inject(&:*) }

# count = 0
# product_arr.each do |arr|
#   count += 1 if arr % p == q
# end

# puts count