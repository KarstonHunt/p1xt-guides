def hipsterfy(word)
  vowels = "aeiou"
  reversed = word.reverse
  hipsterfied = ""
  i = 0
  while i < reversed.length
    if vowels.include?(reversed[i])
      hipsterfied += reversed[i + 1..-1]
      break
    end
    hipsterfied += reversed[i]
    i += 1
  end
  hipsterfied.reverse
end

def vowel_counts(str)
  counts = Hash.new(0)
  vowels = "aeiouAEIOU"
  str.each_char { |char| counts[char.downcase] += 1 if vowels.include?(char) }
  counts
end