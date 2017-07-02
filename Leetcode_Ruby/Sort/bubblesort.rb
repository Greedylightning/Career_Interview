def bubblesort(nums)
    for i in 0...nums.size - 1
        for j in 0...nums.size  - 1 - i
            if nums[j] > nums[j + 1]
                temp = nums[j]
                nums[j] = nums[j + 1]
                nums[j + 1] = temp
            end
        end
    end
  # puts nums
end

nums = [3,4,2,1,5]

bubblesort nums

puts nums