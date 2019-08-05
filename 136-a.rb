a, b, c = gets.strip.split.map(&:to_i)
p result = c - [c, (a - b)].min
