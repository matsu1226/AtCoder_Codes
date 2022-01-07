n = gets.chomp.to_i
c,b,a = gets.chomp.split.map(&:to_i).sort
# aが一番大きい

min = 9999
x = [min, n/a].min

while x >= 0
  rem_ax = n - a * x
  y = [min-x, rem_ax/b].min

  while y >= 0
    if (rem_ax - b * y) % c == 0
      z = (rem_ax - b * y) / c
      if x + y + z < min
        min = x + y + z
      end
      break
    end
    y -= 1
  end

  x -= 1
end

puts min

