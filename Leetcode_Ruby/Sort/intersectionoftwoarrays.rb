def intersectionoftwoarrays(nums1, nums2)
  p1, p2 = 0, 0
  result = []
  while p1 < nums1.size && p2 < nums2.size
    if nums1[p1] < nums2[p2] then p1 += 1
    elsif nums1[p1] > nums2[p2] then p2 += 1
    else
      result << nums1[p1]
      p1 += 1
      p2 += 1
    end
  end
  return result
end


nums1 = [1,1,2,3,3,5,7,7,9,10]

nums2 = [1,1,2,2,3,4,6,6,7,8,10]

puts intersectionoftwoarrays nums1, nums2