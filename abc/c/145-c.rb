n = gets.to_i
arr = []
n.times {arr << gets.strip.split.map(&:to_i)}
count = (1..n).inject(:*)
sum = 0

(0..n - 1).each do |i|
  (i + 1..n - 1).each do |j|
    sum += Math.sqrt((arr[j][0] - arr[i][0]) ** 2 + (arr[j][1] - arr[i][1]) ** 2)
  end
end

p sum * (n - 1) / n

# arr.permutation do |points|
#   i = 1
#   while i < points.size
#     crr = points[i-1]
#     nxt = points[i]

#     sum += Math.sqrt((nxt[0] - crr[0]) ** 2 + (nxt[1] - crr[1]) ** 2)
#     i += 1
#   end
# end

# p sum / count

# ps = []

# (0..n-1).to_a.permutation(n) do |arr|
#   ps << arr
# end

# ps.each do |nums|
#   (nums.length-1).times do |num|
#     cx = arr[nums[num]][0]
#     cy = arr[nums[num]][1]
#     nx = arr[nums[num+1]][0]
#     ny = arr[nums[num+1]][1]
#     dx = (nx - cx) ** 2
#     dy = (ny - cy) ** 2
#     d = dx + dy
#     sum += Math.sqrt(d)
#   end
# end

# p sum.to_f / ps.size
