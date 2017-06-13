# Remember you can test this code with
#   $ rake 2:1

# Write a program that reads in two integers typed on the keybaord
# and outputs their sum, difference, and product
# 
# Standard input will be like "9 2\n" and will expect you to print
# "11\n7\n18\n" to standard output.

def sum_difference_product
  result = []
  integers = gets.chomp
  integers = integers.split(" ")
  integers.each_slice(2) { |a, b| result << a.to_i + b.to_i }
  integers.each_slice(2) { |a, b| result << a.to_i - b.to_i }
  integers.each_slice(2) { |a, b| result << a.to_i * b.to_i }
  print result.join("\n")
end