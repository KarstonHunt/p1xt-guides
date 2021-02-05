def average(n1, n2)
  (n1 + n2) / 2.0
end

def average_array(nums)
  sum = nums.sum
  sum / nums.length.to_f
end

def repeat(str, num)
  str * num
end

def yell(str)
  str.upcase + "!"
end

def alternating_case(str)
  arr = str.split(" ")
  alternated = []
  arr.each_with_index do |word, i|
    if i.even?
      alternated << word.upcase
    else
      alternated << word.downcase
    end
  end
  alternated.join(" ")
end