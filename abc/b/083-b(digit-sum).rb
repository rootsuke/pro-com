n, a, b = gets.strip.split.map(&:to_i)
ans = 0

def digit_sum(n)
  sum = 0
  while n > 0
    # 下一桁を加算
    sum += n % 10
    # 元の整数の下一桁を削除
    # 最後の一桁のときはnが0になるのでループが終了する
    n /= 10
  end
  sum
end

(1..n).each do |m|
  res = digest_sum(m)
  ans += m if a <= res && res <= b
end

puts ans
