def palindrome?(str)
  return true if str.length <= 1
  return false if str[0] != str[-1]
  return palindrome?(str[1..-2])
end
