l,q = gets.split.map(&:to_i)
cuts = []
def binary_search(array,x)
  head = 0
  tail = array.count - 1

  while head <= tail

    center = (head + tail) / 2

    if array[center] < x && array[center+1] > x
      return center
    elsif array[center] < x
      head = center + 1
    else
      tail = center - 1
    end

  end
end
def measure_length(array,x,l)
  if array.length == 0
    puts l
  elsif x > array[-1]
    puts l - array[-1]
  elsif x < array[0]
    puts array[0]
  else
    index = binary_search(array,x)
    puts array[index+1] - array[index]
  end
end
q.times do
  query = gets.split.map(&:to_i)
  if query[0]==1
    cuts << query[1]
  else
    cuts.sort!
    measure_length(cuts,query[1],l)
  end
end