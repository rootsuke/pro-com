n = gets.strip.to_i
ans = 0
(1..n).each do |m|
  # 桁数が偶数のとき加算（文字列に変換）
  ans += 1 if m.to_s.length.odd?
  # 対数の方が若干速い
  # ans += 1 if (Math.log10(m).floor+1).odd?
end
p ans
