n=gets.chomp.to_i
array=gets.split.map(&:to_i).uniq.sort
(0..array.max + 1).each do |i|
  if !array.include?(i)
    puts i
    break
  end
end