# 問題文
# N枚のカードがあります. 
# i枚目のカードには, aiという数が書かれています.
# Alice と Bob は, これらのカードを使ってゲームを行います. 
# ゲームでは, Alice と Bob が交互に 1 枚ずつカードを取っていきます. Alice が先にカードを取ります.
# 2 人がすべてのカードを取ったときゲームは終了し, 取ったカードの数の合計がその人の得点になります. 
# 2 人とも自分の得点を最大化するように最適な戦略を取った時, Alice は Bob より何点多く取るか求めてください.

# 入力例 1
# 2
# 3 1
# 出力例 1
# 2

# 入力例 3 
# 4
# 20 18 2 18
# 出力例 3
# 18

n = gets.to_i
nums = gets.split.map(&:to_i).sort.reverse
# nums = gets.split.map(&:to_i).sort {|a, b| b <=> a}でも可（メモリ効率は同じ）
sum_a = 0
sum_b = 0

n.times do |i|
  if (i%2).zero?
    sum_a += nums[i]
  else
    sum_b += nums[i]
  end
end

puts (sum_a - sum_b)

# timesの方が簡潔
# (0...n).each do |i|
#   if (i%2).zero?
#     sum_a += nums[i]
#   else
#     sum_b += nums[i]
#   end
# end

# shiftは配列の中身を操作するのでメモリ効率が悪い
# while nums.any?
#   sum_a += nums.shift
#   break if nums.empty?
#   sum_b += nums.shift
# end

