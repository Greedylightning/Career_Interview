def selectionsort(nums)
    for i in 0...nums.size - 1
        for j in i + 1...nums.size
            if nums[i] > nums[j]
                temp = nums[i]
                nums[i] = nums[j]
                nums[j] = temp
            end
        end
    end
end


nums = [3,4,1,2,5]
selectionsort nums

puts nums