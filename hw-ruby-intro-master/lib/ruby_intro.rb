# When done, submit this entire file to the autograder.

# Part 1

def sum arr
   ret = arr.inject { |sum, var|  sum + var}
   return 0 if ret == nil
   ret
end

def max_2_sum arr
  sum arr.max(2)
end

def sum_to_n? arr, n
  sum = Hash.new
  for i in arr
      return true if sum[i] != nil
      sum[n - i] = i
  end
  false
end

# Part 2

def hello(name)
  "Hello, " + name
end

def starts_with_consonant? s
  (s =~ /^[^AEIOU\W]/i) != nil
end

def binary_multiple_of_4? s
	return false if s.length == 0
	s =~ /([^01])/
        return false if $1 != nil
	s =~ /([0]+)?(1[01]*)?/
	return true if ($2 == nil && $1 != nil)
	s = $2  # remove zeros
	i = 0
	sum = 0
	while i < s.length
		sum = sum << 1
		sum += (s[i].to_i)
		i += 1
	end
	sum % 4 == 0
end

# Part 3

class BookInStock
	def initialize(isbn, price)
		raise(ArgumentError, "isbn must be non empty") unless isbn.length > 0
		raise(ArgumentError, "price must be greater than 0") unless price > 0
		@isbn = isbn
		@price = price
	end

	def price
		@price
	end

	def isbn
		@isbn
	end

	def price=(new_price)
		@price = new_price
	end

	def isbn=(new_isbn)
		@isbn = new_isbn
	end

	def price_as_string
		price_string = @price.to_f.to_s
		price_string =~ /(\d+).(\d+)/
		if $2.length < 2
			price_string += "0"
		end
		if $2.length > 2
			price_string = $1 + "." + $2[0...2]
		end
		"$" + price_string
	end
end






