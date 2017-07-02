=begin
def quicksort(nums)
    quicksort(nums, 0, nums.size - 1)
end

def quicksort(nums, low, high)
    if low < high
        key = nums[low]
        left = low
        right = high
        while left < right
            while left < right && nums[right] > key
                right -= 1
            end
            nums[left] = nums[right]
            while left < right && nums[left] < key
                left += 1
            end
            nums[right] = nums[left]
        end
        nums[left] = key
        quicksort nums, low, left
        quicksort nums, left + 1, high
    end
end
=end



def quicksort(nums)
    stack = []
    stack.push 0
    stack.push nums.size - 1
    until stack.empty?
        right = stack.pop
        left = stack.pop
        low = left
        high = right
        key = nums[left]
        while left < right
            while left < right && nums[right] > key
                right -= 1
            end
            nums[left] = nums[right]
            while left < right && nums[left] < key
                left += 1
            end
            nums[right] = nums[left]
        end
        nums[left] = key
        if left > low
            stack.push low
            stack.push left
        end

        if left < high
            stack.push left + 1
            stack.push high
        end
    end
end



nums = [3,4,5,2,1]
quicksort nums

puts nums