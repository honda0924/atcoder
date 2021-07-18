n=gets.chomp.to_i
a_array = gets.split.map(&:to_i).sort
b_array = gets.split.map(&:to_i).sort
c_array = gets.split.map(&:to_i).sort
tmp_b_array=[]
i=0
def select_array(array1,array2)
  i=0
  tmp_array=[]
  array1.each do |a|
    if a<array2[i]
      tmp_array<<array2[i]
      i+=1
    else
      i+=1
      while i<=array2.length-1
        if a<array2[i]
          tmp_array<<array2[i]
          i+=1
          break
        else
          i+=1
        end
      end
    end
    if i>array2.length-1
      break     
    end
  end
  return tmp_array
end
puts select_array(select_array(a_array,b_array),c_array).length

