n=gets.chomp.to_i
str=gets.split("").map(&:to_i)
str.each_with_index do |s, index|
  if s == 1
    if index % 2 == 0
      puts 'Takahashi'
    else
      puts 'Aoki'
    end
    exit
  end
end