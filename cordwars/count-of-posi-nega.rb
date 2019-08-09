# 課題: 与えられたリストのうち正の要素の個数と、負の要素の総和を答える関数を書きなさい。
# 入出力例: count_positives_sum_negatives[1, 2, 3, 4, -5, -6, -7] -> [4, -18]
# 制約: 要素数が0のリストが与えられたときは[]を返してください。

def count_positives_sum_negatives_a(arr)
  return [] if arr.empty?

  count = 0
  sum = 0

  arr.each do |i|
    i > 0 ? count += 1 : sum += i
  end

  [count, sum]
end

def count_positives_sum_negatives(arr)
  arr.empty? ? [] : [arr.select(&:positive?).size, arr.select(&:negative?).sum]
end

p count_positives_sum_negatives([1, 2, 3, 4, -5, -6, -7])
