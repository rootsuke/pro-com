# 課題: 与えられた数字を負の数字にして答える関数を書きなさい。
# 入出力例: make_negative(42) -> -42, make_negative(-42) -> -42

def make_negative(n)
  -n.abs
  # puts n > 0 ? -n : n
end

p make_negative(-42)
