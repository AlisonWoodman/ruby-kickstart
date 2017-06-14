# Given an array of elements, return true if any element shows up three times in a row
# 
# Examples:
# got_three? [1, 2, 2, 2, 3]  # => true
# got_three? ['a', 'a', 'b']  # => false
# got_three? ['a', 'a', 'a']  # => true
# got_three? [1, 2, 1, 1]     # => false

def got_three?(array)
new_array = []
answer = false
	array.each_cons(3) do |a, b, c| 
   	  if a == b && b == c
      answer = true
      else
      end
    end
    return answer
end