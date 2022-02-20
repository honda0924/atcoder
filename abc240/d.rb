n=gets.chomp.to_i
array=gets.split.map(&:to_i)
current_array =[]
n=0
array.each do |a|
  current_array << a
  n += 1
  if n >= a
    if current_array.slice(-a,a).uniq.length == 1
      current_array.slice!(-a,a)
      n -= a
    end
  end
  puts n
end