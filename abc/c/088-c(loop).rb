c = readlines.map{|m| m.split.map(&:to_i)}
a = [0] * 3
b = [0] * 3
ans = true

0.upto(100) do |n|
  a[0] = n
  b[0] = c[0][0] - a[0]
  b[1] = c[0][1] - a[0]
  b[2] = c[0][2] - a[0]
  a[1] = c[1][0] - b[0]
  a[2] = c[2][0] - b[0]

  3.times do |i|
    3.times do |j|
      ans = false if c[i][j] != a[i] + b[j]
    end
  end

  break if ans == true
end

puts ans == true ? "Yes" : "No"
