def radixsort(nums, radix, d)
    temp = Array.new nums.size, 0
    bucket = Array.new radix
    rate = 1
    for i in 0...d
        bucket.fill 0
        temp = nums.clone
        for j in 0...nums.size
            subKey = (temp[j] / rate) % radix
            bucket[subKey] += 1
        end

        for j in 1...radix
            bucket[j] = bucket[j] + bucket[j - 1]
        end

        (nums.size - 1).downto(0) do |m|
            subKey = (temp[m] / rate) % radix
            bucket[subKey] -= 1
            nums[bucket[subKey]] = temp[m]
        end
        rate *= radix
    end

end