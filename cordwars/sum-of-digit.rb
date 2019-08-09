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
  # &&は左辺がfalseのときは右辺は評価せず、左辺がtrueのときのみ右辺を評価する
  # つまり「!(n % 9).zero?」がfalseであれば、その時点で「n % 9」は評価されず、最後に評価された「!(n % 9).zero?」の値(false)を返す
  #   => 「|| n.zero? && n || 9 」以降の評価に移る
  # 逆に「!(n % 9).zero?」がtrueなら「n % 9」が評価され、その値(nを9で割った余り)を返す。
  
  # ||は左辺が真のときは右辺は評価しない
  # 「!(n % 9).zero? && n % 9」が真なら、その時点で「n.zero? && n || 9」は無視される
  #   => 最後に評価された「n % 9」の値が返る

  !(n % 9).zero? && n % 9 || n.zero? && n || 9

  # if n % 9 == 0
  #   if n == 0
  #     n
  #   else
  #     9
  #   end
  # else
  #   n % 9
  # end

  # (n % 9).zero? ? n.zero? ? n : 9 : n % 9
end

p digital_root(0)
