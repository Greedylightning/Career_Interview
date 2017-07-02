def heapsort(nums)
    return if nums.nil? || nums.size <= 1
    buildMinHeap(nums)
    (nums.size - 1).downto(1) do |i|
        swap nums, 0, i
        maxHeap nums, i, 0
    end
end

def buildMinHeap(nums)
    return if nums.nil? || nums.size <= 1
    half = nums.size / 2
    half.downto(0) {|i| maxHeap(nums, nums.size, i)}
end

def maxHeap(nums, heapsize, index)
    left = index * 2 + 1
    right = index * 2 + 2

    largest = index

    if left < heapsize && nums[left] > nums[index] largest = left
    if right < heapsize && nums[right] > nums[largest] largest = right
    
    if index != largest
        swap nums, index, largest
        maxHeap nums, heapsize, largest
    end
end

def swap(nums, index1, index2)
    temp = nums[index1]
    nums[index1] = nums[index2]
    nums[index2] = temp
end
