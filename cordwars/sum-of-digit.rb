# 課題: 与えられた自然数に対して各桁の値を合計して新たな数を作る操作を繰り返し、一桁になったときの値を求めなさい。
# 入出力例: digital_root(132189) -> 6 (1 + 3 + 2 + 1 + 8 + 9 = 24, 2 + 4 = 6)

def sum_of_digit(int)
  sum = 0
  while int > 0
    sum += int % 10
    int /= 10
  end
  sum
end

def digital_root_a(n)
  n < 10 ? n : digital_root(sum_of_digit(n))
end

def digital_root(n)
  if n % 9 == 0
    n == 0 ? n : 9
  else
    n % 9
  end
  # (n % 9).zero? ? n.zero? ? n : 9 : n % 9
end

p digital_root(132189)
