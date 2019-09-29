=begin
A sequential search is when you look at each piece of data, one by one, and don’t stop until you find what you are looking for. You can use a sequential search on any data, whether it is sorted or unsorted (though it would be potentially a slow way to locate what you are looking for if the data is in sorted order!) However, sequential search is the only option you can use when you need to search through data that is unsorted.
=end 

def sequential_serach(array, value)
    size= array.size
    i = 0
    while i < size
      if value == array[i]
        return true 
      end 
      i += 1
    end 
    return false 
  end

  # OR 

  def sequential_search(array, value)
    i = 0
    while i < array.length
        if array[i] == value
          return "#{value} at index #{array.index(value)}"
        end
        i+=1
      end
      return -1
  end