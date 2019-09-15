s = gets.chomp.chars
t = gets.chomp.chars
count = 0

s.each_with_index do |str, i|
  p str
  p t[i]
  count += 1 if str == t[i]
end

p count
