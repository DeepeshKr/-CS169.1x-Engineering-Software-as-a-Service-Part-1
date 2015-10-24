# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  return 0 if arr.empty?
  return arr.inject(:+)
end

def max_2_sum arr
	return 0 if arr.empty?
	return arr[0] if arr.length == 1
	arr.sort!
	return arr[ arr.length-1 ] + arr[ arr.length - 2 ]
end


def sum_to_n?(arr, n)
	return false if arr.empty? || arr.length == 1
	return arr.combination( 2 ).any? { | a, b | a + b == n }
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  
  return "Hello, #{name}"
end

def starts_with_consonant? s
  # YOUR CODE HERE
  #get the first character
  first = s[0,1] 
  return if first.empty?
 
  if first =~ /[a-z]/i	#Any single character in the range a-z
      return first =~ /[^aeiou]/i # "/[bcdfghjklmnpqrstvwxyz]/i" # "/[^aeiou]/i" #
    else
      return false #not letter
  end
  
end

def binary_multiple_of_4? s
  return false if s.empty?
 
  return true if (s.length == 1 && s == "0")
  
  #Check if the digt's are 1 and 0's only
  
  

   return (s =~ /00\z/ && s =~ /\A[0|1]{3,}\z/) 
  
  
  
  
end

# Part 3

class BookInStock
# YOUR CODE HERE
  attr_accessor :isbn
  attr_accessor :price

  def initialize(isbn, price)
    raise ArgumentError if (isbn.empty? || price <= 0)
    @isbn = isbn
    @price = price
  end

  def price_as_string
    return "$%.2f" % price
  end
end
