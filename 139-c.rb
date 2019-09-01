n = gets.to_i
heights = gets.split.map(&:to_i)
ans = 0

# heights.each_with_index do |h, i|
#   tmp_h = h
#   tmp_a = 0
#   heights[i+1..-1].each do |h_a|
#     tmp_h >= h_a ? tmp_a += 1 : break
#     tmp_h = h_a
#   end
#   ans = tmp_a if ans < tmp_a
# end

# p ans

cur = 0

(n-1).times do |i|
  if h[i] >= h[i+1]
    cur += 1
  else
    cur = 0
  end
  ans = cur if cur > ans
end

p ans
