n=gets.chomp.to_i
strs=[]
ex_strs=[]
n.times do
  str=gets.chomp
  str=str.start_with?('!') ? strs << str.slice(1,str.length-1)+'!' : strs << str
end
strs=strs.sort
(0..strs.length-1).each do |i|
  if strs[i]+'!'==strs[i+1]
    puts strs[i]
    exit
  end
end
puts 'satisfiable'