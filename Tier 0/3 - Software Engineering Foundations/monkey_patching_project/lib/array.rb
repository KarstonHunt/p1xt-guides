# Monkey-Patch Ruby's existing Array class to add your own custom methods
class Array
  def span
    return nil if self.empty?
    self.max - self.min
  end

  def average
    return nil if self.empty?
    self.sum / self.length.to_f
  end

  def median
    return nil if self.empty?
    sorted = self.sort
    if self.length.odd?
      sorted[self.length / 2]
    else
      (sorted[(self.length - 1) / 2] + sorted[self.length / 2]) / 2.0
    end
  end

  def counts
    counts_hash = Hash.new(0)
    self.each { |el| counts_hash[el] += 1 }
    counts_hash
  end

  def my_count(arg)
    count = 0
    self.each { |el| count += 1 if el == arg }
    count
  end

  def my_index(arg)
    self.each_with_index do |el, i|
      return i if el == arg
    end
    nil
  end

  def my_uniq
    new_arr = []
    self.each do |el|
      new_arr << el if !new_arr.include?(el)
    end
    new_arr
  end

  def my_transpose
    transposed = []
    self.length.times { transposed << [] }
    self.length.times do |n|
      self[n].each_with_index do |el, i|
        transposed[i] << el
      end
    end
    transposed
  end
end
