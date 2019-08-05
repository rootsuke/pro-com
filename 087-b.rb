a, b, c, x = 4.times.map {gets.to_i}
count = 0

(0..a).each do |i_a|
  (0..b).each do |i_b|
    (0..c).each do |i_c|
      count += 1 if 500*i_a + 100*i_b + 50*i_c == x
    end
  end
end

puts count
