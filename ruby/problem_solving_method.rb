arr = [42, 89, 23, 1]

def search_array(arr, i)
  arr.each 
  if arr.include?(i)
    index_position = (arr.length - 1)
  else 
    return nil
  end
end


p search_array(arr, 1)
p search_array(arr, 24)

def fib(n)
  fib_numbers = [0,1]
  if n == 1
    return [0]
  end
  while fib_numbers.length < n
    add_to_array = fib_numbers[-1] + fib_numbers[-2]
    fib_numbers << add_to_array
  end
  return fib_numbers
end

p fib(6)
p fib(100)[-1]

#take an array
#set a count based on index of list
#IF value of current index is greater than the following, swap value of those indexs
#Continue while length of list greater than current index value
#each time executed, add 1 to index 

list = [41, 5, 7, 42, 5]
def bubble_sort(list)
i = 0
  while i != list.length-1 
    swap_index_1 = list[i]
    swap_index_2 = list[i+1]
    if swap_index_1 > swap_index_2
      list[i] = swap_index_2
      list[i+1] = swap_index_1
    end
    i += 1
  end
  return list
end

p bubble_sort(list)






