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

def caesar_cipher(message, n)
  alphabet = ("a".."z").to_a
  new_message = ""

  message.each_char do |char|
    if alphabet.include?(char)
      old_ind = alphabet.index(char)
      new_ind = old_ind + n
      new_message += alphabet[new_ind % 26]
    else
      new_message += char
    end
  end

  new_message
end