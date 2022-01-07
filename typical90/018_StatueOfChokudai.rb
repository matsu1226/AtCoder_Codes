include Math
t = gets.chomp.to_i
l,px,py = gets.chomp.split.map(&:to_i)
q = gets.chomp.to_i


q.times do |i|
  e = gets.chomp.to_i

  sx = 0
  sy = -(l/2.0) * Math.sin(2*PI*e/t)
  sz = l/2.0 * (1 - Math.cos(2*PI*e/t))

  x,y = 0,0
  x = Math.sqrt( px**2 + (sy - py)**2 )
  y = sz
  puts Math.atan(y/x) * 180/PI
end

