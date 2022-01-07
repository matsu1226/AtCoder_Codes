n,k = gets.chomp.split(" ")

k.to_i.times do
  n = n.to_i(8).to_s(9).gsub(/8/,'5')
end

puts n