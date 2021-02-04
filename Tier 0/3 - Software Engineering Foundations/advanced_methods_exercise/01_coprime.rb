# Write a method, coprime?(num_1, num_2), that accepts two numbers as args.
# The method should return true if the only common divisor between the two numbers is 1.
# The method should return false otherwise. For example coprime?(25, 12) is true because
# 1 is the only number that divides both 25 and 12.

def coprime?(num1, num2)
  (2..num1).none? { |n| num1 % n == 0 && num2 % n == 0 }
  # return false if num1 % num2 == 0 || num2 % num1 == 0
  # half_num1 = num1 / 2
  # num1_factors = []
  # (2..half_num1).each do |n1|
  #   (2..half_num1).each do |n2|
  #     if n1 * n2 == num1
  #       num1_factors.push(n1, n2)
  #     elsif n1 * n2 > num1
  #       next
  #     end
  #   end
  # end

  # half_num2 = num2 / 2
  # (2..half_num2).each do |n1|
  #   (2..half_num2).each do |n2|
  #     return false if num1_factors.include?(n1) && n1 * n2 == num2
  #   end
  # end
  # true
end


p coprime?(25, 12)    # => true
p coprime?(7, 11)     # => true
p coprime?(30, 9)     # => false
p coprime?(6, 24)     # => false
