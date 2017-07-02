def two_sum(nums, target)
  nums.sort!
  a = []
  low = 0
  high = nums.size - 1
  while low <= high
    if(target == nums[low] + nums[high])
      a[0] = low + 1
      a[1] = high + 1
      break;
    elsif target > nums[low] + nums[high]
      low += 1
    else
      high -= 1
    end
  end
  return a
end

nums = [2,5,7,3,9]
 result = two_sum(nums, 9)
puts result