n,k = gets.chomp.split.map(&:to_i)

a = gets.chomp.split.map(&:to_i)
b = gets.chomp.split.map(&:to_i)

diff = 0
n.times do |i|
  diff += (a[i] - b[i]).abs
end

puts k >= diff && (k - diff).even? ? 'Yes' : 'No'