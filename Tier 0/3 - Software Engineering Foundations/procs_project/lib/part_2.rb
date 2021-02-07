def reverser(str, &prc)
  reversed = str.reverse
  prc.call(reversed)
end
