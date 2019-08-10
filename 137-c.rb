n = gets.to_i
hash = Hash.new(0)
ans = 0

n.times do
  str = gets.chomp.chars.sort.join
  hash[str] += 1
end

hash.each do |k, v|
  ans += (v-1..v).inject(:*) / 2 if v > 1
end

p ans
