n = gets.to_i
arr = gets.split.map(&:to_i).sort
sum = 0

# 1.upto(n).each do |i|
1.step(n).each do |i|
  sum += arr[-i*2]
end

p sum
