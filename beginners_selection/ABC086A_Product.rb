a,b = gets.chomp.split(" ").map(&:to_i)
num = a * b

if num % 2 == 0
  print("Even")
else
  print("Odd")
end