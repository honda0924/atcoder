n=gets.chomp.to_i
array=gets.split.map(&:to_i)
ans_array=[]
array.each_with_index do |i,index|
  ans_array << [index+1,i]
end
ans_array.sort!{|a,b| a[1] <=> b[1] }
puts ans_array[-2][0]