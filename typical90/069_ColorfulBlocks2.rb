n,k = gets.chomp.split.map(&:to_i)
MOD = 10 ** 9 + 7

# (a ** b).mod(m)
# def powmod(a, b ,mod)
#   if b == 0
#     1
#   elsif b.even?
#     x = powmod(a, b/2 ,mod)
#     x * x % mod
#   else
#     a * powmod(a, b - 1, mod) % mod
#   end
# end

# if n == 1
#   puts k
# else    # n >= 2
#   puts powmod(k-2, n-2, MOD) * k * (k - 1) % MOD 
# end

if n == 1
  puts k
else    # n >= 2
  puts (k - 2).pow(n-2, MOD) * k * (k - 1) % MOD 
end

# pow https://docs.ruby-lang.org/ja/latest/class/Integer.html#I_--2A--2A