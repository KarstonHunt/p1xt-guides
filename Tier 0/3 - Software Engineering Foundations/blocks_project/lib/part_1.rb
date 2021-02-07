def select_even_nums(nums)
  nums.select(&:even?)
end

def reject_puppies(dogs)
  dogs.reject { |dog| dog["age"] <= 2 }
end

def count_positive_subarrays(array)
  array.count { |subarr| subarr.sum > 0 }
end

def aba_translate(word)
  vowels = "aeiou"
  translated = ""
  word.each_char do |char|
    translated += char
    if vowels.include?(char.downcase)
      translated += "b" + char
    end
  end
  translated
end