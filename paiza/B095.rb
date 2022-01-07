n,m = gets.chomp.split.map(&:to_i)
a_arr = []

(1..m).each do
  a_arr << gets.to_i
end

max_score = 0
(1..n).each do |i|
  score = 100
  (1..m).each do |j|
    h = gets.to_i
    diff = (a_arr[j-1] - h).abs
    if diff <= 5
      score -= 0
    elsif 5 < diff && diff <= 10
      score -= 1
    elsif 10 < diff && diff <= 20
      score -= 2
    elsif 20 < diff && diff <= 30
      score -= 3
    else
      score -= 5
    end
  end

  max_score = score if max_score < score
end

puts max_score