def find_longest_word(s, d)
  result = ""
  d.each do |word|
    p1 = 0
    p2 = 0
    found = false
    while p1 < s.size && p2 < word.size
      while s[p1] != word[p2] && p1 < s.size
        p1 += 1
      end
      if p2 == word.size - 1
        found = true
        break
      end
      if p1 == s.size - 1
        found = false
        break
      end
      p2 += 1
      p1 += 1
    end
    if found
      if result.empty? then result = word
      elsif result.size < word.size then result = word
      elsif result.size == word.size
        if word < result then result = word end
      end
    end
  end
  return result
end



s = "aewfafwafjlwajflwajflwafj"
d = ["apple","ewaf","awefawfwaf","awef","awefe","ewafeffewafewf"]

find_longest_word s, d