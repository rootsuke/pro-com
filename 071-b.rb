s = gets.chars.uniq.sort
arr = ("a".."z").to_a
ans = (arr - s)[0]

puts ans.nil? ? "None" : ans
