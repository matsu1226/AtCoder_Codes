n = gets.chomp.to_i
a_arr = gets.chomp.split.map(&:to_i).sort!
q = gets.chomp.to_i
b_arr = []

q.times do
  b = gets.chomp.to_i
  idx = a_arr.bsearch_index {|x| x >= b }
  # bの次に大きい要素のインデックスを返す https://docs.ruby-lang.org/ja/latest/method/Array/i/bsearch.html

  if idx.nil?
    small = (a_arr[n-1] -b).abs
  elsif idx == 0
    small = (a_arr[0] -b).abs
  else
    small = [(a_arr[idx] - b).abs, (a_arr[idx-1] - b).abs].min
  end
  b_arr << small
end

puts b_arr