n = gets.chomp.to_i
exit if n.odd?

s_arr = []

# repeated_permutation => 重複順列の生成 https://docs.ruby-lang.org/ja/latest/method/Array/i/repeated_permutation.html
["(", ")"].repeated_permutation(n) do |s|
  count = 0
  s.each do |i|
    count += 1 if i == "("
    count -= 1 if i == ")"

    break if count.negative?  # count < 0
  end

  if count == 0
    s_arr << s.join("")
  end
end

puts s_arr