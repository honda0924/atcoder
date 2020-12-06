n,x=gets.split.map(&:to_i)
answers=gets.chomp.split('')

answers.each do |s|
    if s=='o'
        x+=1
    else
        if x!=0
            x-=1
        end
    end
end

puts x