n,m=gets.split.map(&:to_i)
sum=0
if m==0
  puts 1
  exit
elsif n==m
  puts 0
  exit
else
  array=gets.split.map(&:to_i).sort
  stamp_array=[]
  (0..array.length-2).each do |i|
    if (array[i+1]-array[i])>0
      stamp_array << (array[i+1]-array[i])
    end
  end
end
k=stamp_array.min
stamp_array.each do |stamp|
  sum += (stamp.to_f/k.to_f).ceil
end
sum +=((n-stamp_array[-1]).to_f/k.to_f).ceil
print sum


