n = gets.to_i
str = gets.chomp

if n.odd?
  puts "No"
  exit
end

a = str[0..n/2-1]
b = str[n/2..-1]

puts a == b ? "Yes" : "No"
