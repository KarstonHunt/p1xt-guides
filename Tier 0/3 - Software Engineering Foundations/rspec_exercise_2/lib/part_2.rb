def palindrome?(str)
  return true if str.length <= 1
  return false if str[0] != str[-1]
  return palindrome?(str[1..-2])
end

def substrings(str)
  substrings = []
  str.each_char.with_index do |char1, i|
    substr = ""
    str.each_char.with_index do |char2, j|
      if j >= i
        substr += char2
        substrings << substr
      end
    end
  end
  substrings
end
