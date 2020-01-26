n = gets.to_i
arr = []
flg = Array.new(15) {|a| nil}

n.times do
  num = gets.to_i
  arr_i = []
  num.times do |i|
    arr_i << gets.split.map(&:to_i)
  end
  arr << arr_i
end

n.times do |i|
  flg[i] = true
  arr.each do |a|
    person = a[0]
    val = a[1]
    if flg[person - 1].nil?
      flg[person - 1] = val
    elsif flg[person - 1] == val
      next
    else
      break
    end
  end
end
