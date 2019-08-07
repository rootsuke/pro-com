# def make_new_list(x)
#   x.zip(x[1..-1])[0..-2].map(&:sum)
# end

make_new_list = -> (x) {x.zip(x[1..-1])[0..-2].map(&:sum)}

arr = [1, 10, 100, 1]
p make_new_list.call(arr)
