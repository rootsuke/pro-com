def find_it(arr)
  arr.each do |i|
    if arr.count(i).odd?
      return p i
    end
  end
end

find_it([20,1,-1,2,-2,3,3,5,5,1,2,4,20,4,-1,-2,5])
