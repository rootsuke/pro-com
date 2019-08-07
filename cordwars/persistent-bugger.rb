# 課題: 与えられた自然数に対して各桁の値をすべて掛け合わせて新たな数を作る操作を最低何回行えば一桁になりますか。
# 入出力例: persistence(39) -> 3 (3 * 9 = 27, 2 * 7 = 14, 1 * 4 = 4で最低3回の操作を行うと一桁になる)

require 'benchmark'

def int_to_array(int)
  array = []
  array = [0] if int == 0
  while int > 0
    digit = int % 10
    array.unshift(digit)
    int /= 10
  end
  array
end

def persistence(n)
  n < 10 ? 0 : persistence(int_to_array(n).inject(&:*)) + 1
  # if n < 10
  #   0
  # else
  #   persistence(int_to_array(n).inject(&:*)) + 1
  # end
end

def persistence_another(n)
  def rec(arr, cnt)
    p arr
    if arr.size == 1
      return cnt
    end

    return rec(int_to_array(arr.inject(&:*)), cnt + 1)
  end

  rec(int_to_array(n), 0)
end

def int_to_array_another(int)
  int.to_s.split('').map(&:to_i)
end

# user     system      total        real
# int_to_array      0.040000   0.000000   0.040000 (  0.039789)
# another           0.190000   0.000000   0.190000 (  0.190669)

Benchmark.bm(15) do |x|
  n = 50000
  x.report('int_to_array') {
    n.times do |i|
      int_to_array(i)
    end
  }
  x.report('another') {
    n.times do |i|
      int_to_array_another(i)
    end
  }
end
