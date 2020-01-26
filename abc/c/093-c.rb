arr = gets.split.map(&:to_i)
m = arr.max
(3*m).even? == arr.inject(:+).even? ? m : m += 1

p (3*m - arr.inject(:+)) / 2
