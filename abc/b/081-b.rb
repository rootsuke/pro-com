n = gets.to_i
nums = gets.split.map(&:to_i)
count = 0

while nums.all?(&:even?) do
  nums = nums.map {|m| m/2}
  count += 1
end

puts count
