include Math
a,b,c = gets.split.map(&:to_i)

# puts Math.log2(a) < b * Math.log2(c) ? "Yes" : "No"
puts a < c ** b ? "Yes" : "No"