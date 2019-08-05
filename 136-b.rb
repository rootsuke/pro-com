n = gets.strip.to_i
ans = 0
(1..n).each do |m|
  ans += 1 if m.to_s.length.odd?
end
p ans
