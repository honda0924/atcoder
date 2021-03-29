n=gets.chomp.to_i
array = gets.split.map(&:to_i).sort!

minimum = 0
maximum = 0

array.each_with_index do |a,index|
  minimum = (minimum + a * (2 ** (array.length - 1 - index)))%998244352
  maximum = (maximum + a * (2 ** index))%998244352
end

puts minimum * maximum
