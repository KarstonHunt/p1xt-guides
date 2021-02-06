def partition(arr, num)
  p1 = []
  p2 = []
  arr.each do |n|
    if n < num
      p1 << n
    else
      p2 << n
    end
  end
  [p1, p2]
end

def merge(hash1, hash2)
  merged = {**hash1, **hash2}
  merged
end

def censor(sentence, curses)
  vowels = "aeiouAEIOU"
  words = sentence.split
  censored = words.map do |word|
    if curses.include?(word.downcase)
      new_word = word.chars.map do |char|
        if vowels.include?(char)
          "*"
        else
          char
        end
      end
      new_word.join("")
    else
      word
    end
  end
  censored.join(" ")
end

def power_of_two?(n)
  return false if n < 1
  powers = 1
  while powers <= n
    return true if powers == n
    powers *= 2
  end
  false
end