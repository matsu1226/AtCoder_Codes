# 解説 => https://find-best-practice.com/2021/09/11/%E3%80%90atcoder%E3%80%91%E7%AB%B6%E3%83%97%E3%83%AD%E5%85%B8%E5%9E%8B%E5%95%8F%E9%A1%8C90%E5%95%8F%E3%81%AB%E6%8C%91%E6%88%A6/#toc50

h,w = gets.split(" ").map(&:to_i)

if h == 1 || w == 1 
  puts h *w
else
  puts ((h + 1) / 2) * ((w + 1) / 2)
end