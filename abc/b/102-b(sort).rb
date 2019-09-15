# i = gets.to_i
# nums = gets.split.map(&:to_i)
# res = 0

# nums.each do |n|
#   nums.each do |m|
#     res < n - m ? res = n - m : res
#   end
# end

# p res

i = gets.to_i
nums = gets.split.map(&:to_i).sort

p nums[-1] - nums[0]
