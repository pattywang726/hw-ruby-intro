# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr.inject(0) {|sum, number| sum += number}
end

def max_2_sum arr
  return 0 if arr.empty?
  return arr.first if arr.length == 1
  arrL = arr.sort{ |a, b| b <=> a }.first(2)
  return arrL.reduce(:+)
end

def sum_to_n? arr, n
  return false if arr.empty?
  
  hashT = Hash.new
  arr.each do |i| 
    return true if (hashT.has_key?(n - i) )
    hashT.store(i, "")
    end
  
  return false
end

# Part 2

def hello(name)
  "Hello, ".concat(name)
end

def starts_with_consonant? s
  return false if (s.empty?)
  return false if (/[^a-zA-Z0-9_]/.match(s[0]) != nil)
  return false if (/[aeiouAEIOU]/.match(s[0]) != nil)
  return true
end

def binary_multiple_of_4? s
  return false if (s.empty?)
  return false if (/[^0-1]/.match(s) != nil)
  
  l = s.length
  num = 0
  s.each_char do |i|
    num += (2**(l - 1)) * Integer(i) 
    l -= 1
  end
  return true if (num % 4 == 0)
end

# Part 3

class BookInStock
  def initialize(isbn, price)
    
    raise ArgumentError.new("Non valid ISBN number") if (isbn.empty?)
    raise ArgumentError.new("Non valid book price") if (price <= 0)
    
    @isbn = isbn
    @price = price
  end
  
  def isbn
    @isbn
  end
  
  def price
    @price
  end
  
  def isbn=(isbn)
    @isbn = isbn
  end
  
  def price=(price)
    @price = price
  end
  
  def price_as_string
    
    return "$" + "%.2f" % price
    
  end
  
end
