n,q = gets.split.map(&:to_i)
students = gets.split.map(&:to_i).sort
def is_tall_count(x, n, array)
  head = 0
  tail = n-1
  if array[0] > x
    return n
  else
    while head <= tail
      center = (head + tail) / 2
      if array[center] >= x 
        tail = center - 1
      else
        head = center + 1
      end
    end
    return n - head
  end
end


q.times do
  x=gets.chomp.to_i
  puts is_tall_count(x, n, students)
end