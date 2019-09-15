n = gets.to_i

def sum_of_digit(int)
  sum = 0
  while int > 0
    sum += int % 10
    int /= 10
  end
  sum
end

puts n % sum_of_digit(n) == 0 ? "Yes" : "No"
