n, k = gets.split.map(&:to_i)
hs = gets.split.map(&:to_i)
ans = 0

hs.each do |h|
  ans += 1 if h >= k
end
p ans
