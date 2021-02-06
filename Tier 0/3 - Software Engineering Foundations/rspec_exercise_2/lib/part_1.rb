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