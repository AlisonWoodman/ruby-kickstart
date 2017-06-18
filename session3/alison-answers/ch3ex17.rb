# Print to stdout, each element in a hash based linked list, in reverse.
# If you don't know what that is, go check out the previous problem.
#
# EXAMPLES:
# head = {:data => 1, :next => nil}
# head = {:data => 2, :next => head}
#
# print_list_in_reverse head   # >> "1\n2\n"
def print_list_in_reverse(list)
	arr = []
	while list
		arr << list[:data]
		list = list[:next]
	end
	puts arr.join(" ").reverse
end

# Works when I test it in irb, not in rake, I actually wrote this one! (though easier after previous challenge)