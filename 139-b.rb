a, b = gets.split.map(&:to_i)
count = 1
ans = 0
while count < b
  count += a-1
  ans += 1
end
p ans
