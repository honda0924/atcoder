h,w = gets.split.map(&:to_i)
array=[]
h.times do
  row = gets.split.map(&:to_i)
  array << row
end
(0..h-1).each do |i|
  (0..w-1).each do |j|
    (i..h-1).each do |k|
      (j..w-1).each do |l|
        if array[i][j]+array[k][l]>array[k][j]+array[i][l]
          puts 'No'
          exit
        end
      end
    end
  end
end
puts 'Yes'