def maximum_product(nums)
  nums.sort!
  max = nums[0] * nums[1] * nums[nums.size - 1]
  min = nums[nums.size - 1] * nums[nums.size - 1] * nums[nums.size - 3]

  return max > min ? max : min
end