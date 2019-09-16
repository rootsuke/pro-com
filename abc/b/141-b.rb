s = gets.chomp.chars
ans = true
s.size.times do |i|
  if s[i] == "R" && i % 2 != 0
    ans = false
    break
  elsif s[i] == "L" && i % 2 == 0
    ans = false
    break
  end
end
puts ans ? "Yes" : "No"
