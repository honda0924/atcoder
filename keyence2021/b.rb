n,k=gets.split.map(&:to_i)
array=gets.split.map(&:to_i)
cnt_array=[]
ans=0
(0..array.max+1).each do |i|
  cnt_array << array.count(i)
  if array.count(i)==0
    break
  end
end
(0..k-1).each do |j|
  ans +=cnt_array.index(0)
  tmp_array=cnt_array.map{|x| x>0 ? x-1 : 0}
  if cnt_array.index(0)==0
    break
  end
  k=cnt_array.index(0)
  cnt_array=tmp_array.slice(0,k+1)
end
puts ans

