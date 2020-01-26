n = gets.to_i
arr = []
n.times { arr << gets.chomp.split.map(&:to_i) }
current = [0, 0, 0]
can = true

arr.each do |nums|
  ct = current[0]
  cx = current[1]
  cy = current[2]
  
  nt = nums[0]
  nx = nums[1]
  ny = nums[2]

  time = nt - ct
  distance = (nx - cx).abs + (ny - cy).abs
  if distance > time || time.even? != distance.even?
    can = false
    break
  end
  current = nums
end

puts can ? "Yes" : "No"
