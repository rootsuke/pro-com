# 課題: 与えられたリストのそれぞれ隣り合った要素の和からなるリストを作る関数を60字以内で書きなさい。
# 入出力例: make_new_list([1, 10, 100, 1]) -> [11, 110, 101] (1+10, 10+100, 100+1)

# def make_new_list(x)
#   x.zip(x[1..-1])[0..-2].map(&:sum)
# end

make_new_list = -> (x) {x[0..-2].zip(x[1..-1]).map(&:sum)}

arr = [1, 10, 100, 1]
p make_new_list.call(arr)
