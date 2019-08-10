k, x = gets.split.map(&:to_i)
start = x - k + 1
fin = x + k - 1
puts "#{(start..fin).to_a}".gsub(/[\[\],]/, "")
