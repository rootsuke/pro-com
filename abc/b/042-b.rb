n, l = gets.split.map(&:to_i)
# 残りをすべて読み込むときはreadlines
puts readlines.split.map(&:chomp).sort.join
