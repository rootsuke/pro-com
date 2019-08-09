# 課題: 与えられた整数が偶数(Even)か奇数(Odd)かを答える関数を書きなさい。
# 入出力例: even_or_odd(2) -> "Even"

def even_or_odd(n)
  n.even? ? "Even" : "Odd"
end

p even_or_odd(152)
