def reverser(str, &prc)
  reversed = str.reverse
  prc.call(reversed)
end

def word_changer(sentence, &prc)
  words = sentence.split(" ")
  new_words = words.map { |word|  }
end
