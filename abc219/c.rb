x=gets.chomp.split('')
alphabets = ('a'..'z').to_a
n=gets.chomp.to_i
array = []
n.times do
  str=gets.chomp.split('')
  convert_str = []
  str.each do |s|
    convert_str << alphabets[x.index(s)]
  end
  array << [str.join, convert_str.join]
end
array.sort!{|a,b| a[1]<=>b[1]}
array.each do |a|
  puts a[0]
end