def matrix_reshape(nums, r, c)
  row = nums.size()
  col = nums[0].size()
  return nums unless r * c == row * col
  a = Array.new(r) {Array.new(c)}
  puts a
  puts a.size
  puts a[0].size
  a[0][0] = 1423423
  puts a[0][0]
  r_index = 0, c_index = 0
  for i in 0...row
    for j in 0...col
      a[r_index][c_index] = nums[i][j].to_i
      c_index += 1
      if c_index == c
        r_index += 1
        c_index = 0
      end
    end
  end
  return a
end

nums = [[1,2], [3,4]]

result = matrix_reshape nums, 1,4

puts result