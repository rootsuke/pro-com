n, x = gets.split.map(&:to_i)
arr = gets.split.map(&:to_i).sort
ans = 0

# while x > 0 && arr != []
#   x -= a.shift
#   ans += 1
# end

arr.each do |a|
  x -= a
  ans += 1
  break if x < 0
end

ans -= 1 if x != 0
p ans
