# Given a nonnegative integer, return a hash whose keys are all the odd nonnegative integers up to it
# and each key's value is an array containing all the even non negative integers up to it.
#
# Examples:
# staircase 1  # => {1 => []}
# staircase 2  # => {1 => []}
# staircase 3  # => {1 => [], 3 => [2]}
# staircase 4  # => {1 => [], 3 => [2]}
# staircase 5  # => {1 => [], 3 => [2], 5 =>[2, 4]}
def staircase(n)
	keys = []
	values = []
	for i in 1..n 
		next if i.even?
		keys << i
	end

	keys.each do |num|
		keys_range = (1..num).to_a
		values << keys_range.select { |num| num.even?}
	end
  return Hash[keys.zip(values)]
end
	

#took about an hour :/ , checked other students' issues in Github, then googled to find how to turn arrays into key-value pairs