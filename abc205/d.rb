n,q = gets.split.map(&:to_i)
array = gets.split.map(&:to_i).sort
vacant_array = array.map.with_index{|x,index| [x, x - index -1 ]}
def binary_search(array,query)
  head = 0
  tail = array.length - 1
  if query <= array[head][1]
    return query
  end
  if query > array[tail][1]
    return array[tail][0] + query - array[tail][1]
  end
  while head <= tail do
    center = (head + tail) / 2
    if array[center][1] < query && array[center + 1][1] >= query
      return array[center][0] + query - array[center][1]
    elsif array[center][1] < query
      head = center + 1
    else
      tail = center - 1
    end
  end
end
q.times do
  query = gets.chomp.to_i
  puts binary_search(vacant_array, query)
end