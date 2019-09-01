n, m = gets.split.map(&:to_i)
ans = [0]*n
m.times do
  a, b = gets.split.map(&:to_i)
  ans[a-1] += 1
  ans[b-1] += 1
end
puts ans
