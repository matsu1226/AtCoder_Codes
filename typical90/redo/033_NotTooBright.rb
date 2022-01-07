h,w = gets.chomp.split.map(&:to_i)

if h == 1 || w == 1
  puts h * w
else
  puts h.divmod(2).sum * w.divmod(2).sum
end