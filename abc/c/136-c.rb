n = gets.to_i
h = gets.split.map(&:to_i)
ans = true
h[0] -= 1
(1...n).each do |i|
  if h[i] > h[i-1]
    h[i] -= 1
  elsif h[i] < h[i-1]
    ans = false
    break
  end
end
p (ans ? 'Yes' : 'No')
