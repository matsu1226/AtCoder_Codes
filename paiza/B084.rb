n,m,k = gets.chomp.split.map(&:to_i)
s_arr = gets.chomp.split.map(&:to_i)

s_like_idx = s_arr.each_index.select{|x| s_arr[x] == 3 }
s_zero_idx = s_arr.each_index.select{|x| s_arr[x] == 0 }

ans = []
(1..m).each do |i|
  t_arr = gets.chomp.split.map(&:to_i)

  count = 0
  s_like_idx.each do |j|
    count += 1 if t_arr[j] == 3
  end

  if count >= k
    s_zero_idx.each do |j|
      ans << j + 1 if t_arr[j] == 3
    end
  end

end

print ans == [] ? "no" : ans.uniq.sort.join(" ")
