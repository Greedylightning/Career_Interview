=begin
def mergesort(nums)
    return mergesort(nums, 0, nums.size - 1, Array.new(nums.size));
end

def mergesort(nums, low, high, temp)
    if low < high
        mid = (low + high) / 2
        mergesort nums, low, mid, temp
        mergesort nums, mid + 1, high, temp
        merge nums, low, mid, high, temp
    end
end

def merge(nums, low, mid, high, temp)
    left, right = low, mid + 1
    index = 0
    while left <= mid && right <= high
        if nums[left] < nums[right]
            temp[index] = nums[left]
            index += 1
            left += 1
        else
            temp[index] = nums[right]
            index += 1
            right += 1
        end        
    end

    while left <= mid
        temp[index] = nums[left]
        left += 1
        index += 1
    end

    while right <= high
        temp[index] = nums[right]
        right += 1
        index += 1
    end

    for i in 0...index
        nums[low + i] = temp[i]
    end
end
=end




# non-recusion solution

def mergesort(nums)
    len = 1
    while len < nums.size
        i = 0
        while i < nums.size
            merge nums, i, len
            i += len * 2
        end
        len *= 2
    end
end

def merge(nums, low, len)
    left = low
    mid = low + len
    right = low + len
    high = right + len
    temp = Array.new len * 2, 0
    index = 0
    while left < mid && right < high && right < nums.size
        if nums[left] < nums[right]
            temp[index] = nums[left]
            left += 1
            index += 1
        else
            temp[index] = nums[right]
            index += 1
            right += 1
        end
    end
    while left < mid && left < nums.size
        temp[index] = nums[left]
        index += 1
        left += 1
    end
    while right < high && right < nums.size
        temp[index] = nums[right]
        index += 1
        right += 1
    end
    iter = 0
    while iter < index
        nums[low + iter] = temp[iter]
        iter += 1
    end
end

nums = [3,2,4,5,1]

mergesort nums

puts nums