def reverser(str, &prc)
  reversed = str.reverse
  prc.call(reversed)
end

def word_changer(sentence, &prc)
  words = sentence.split(" ")
  new_words = words.map { |word| prc.call(word) }
  new_words.join(" ")
end

def greater_proc_value(num, prc1, prc2)
  if prc1.call(num) > prc2.call(num)
    return prc1.call(num)
  else
    return prc2.call(num)
  end
end

def and_selector(arr, prc1, prc2)
  new_arr = []
  arr.each do |el|
    new_arr << el if prc1.call(el) && prc2.call(el)
  end
  new_arr
end