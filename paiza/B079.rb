class String
  def change_num
    num_arr = (1..26).to_a
    alpha_arr = [*'a'..'z']

    ans = 0
    26.times do |i|
      ans = num_arr[i] if self == alpha_arr[i]
    end
    ans
  end
end

def calc_chemistry(arr_x)
  (arr_x.count - 1).times do |i|
    arr = []

    (arr_x.count - 1).times do |j|
      num = arr_x[j] + arr_x[j+1]
      num -= 101 if num >= 101
      arr << num
    end
    arr_x = arr

  end
  arr_x[0].to_i
end


s,t = gets.chomp.split.map(&:to_s)

num_s = s.split("").map(&:change_num)
num_t = t.split("").map(&:change_num)

arr_1 = num_s + num_t
arr_2 = num_t + num_s

ans1 = calc_chemistry(arr_1)
ans2 = calc_chemistry(arr_2)

puts ans1 >= ans2 ? ans1 : ans2