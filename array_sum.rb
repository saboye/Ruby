# #Write a Ruby method that will return the sum of of all the elements of the integer array, given array as an input arrgument. 
def sum_array(array)
  size=array.length 
  total=0
  index=0
  while index < size
    total=total + array[index]
    index += 1
  end
  return total 
end 

#You can pass the reduce method a starting value (i.e. 0 in the example below), and a block.
def sum_array(array)
  array.reduce(0, :+)
end 

#Inject accumulates the result of the previous block value & passes it into the next one very useful for adding up totals
def sum_array(array)
  array.inject(0){|sum,x| sum + x }
end 


#The inject method is nothing more than an alias for reduce. So you can use it exactly as you would use the reduce method.
def sum_array(array)
  array.inject(0, :+)
end 



#The class implementation of the array sum using the injection
class Array
  def sum
    inject(0) { |sum, x| sum + x }
  end
end
