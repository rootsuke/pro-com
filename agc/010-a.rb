gets
arr = gets.split.map(&:to_i)
puts arr.inject(:+).odd? ? "NO" : "YES"
