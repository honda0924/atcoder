n=gets.chomp.to_i
str=gets.chomp

while true
    if str.include?('fox')
        i=str.index('fox')
        str=str.delete(i,3)
    else
        break
    end
end

puts str.length
