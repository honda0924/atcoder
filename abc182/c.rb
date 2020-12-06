n=gets.chomp.split('').map(&:to_i)

if n.sum%3==0
    puts 0
elsif n.sum%3==1
    if n.length>1 && (n.include?(1) || n.include?(4) || n.include?(7))
        puts 1
    elsif n.length>2 && n.count{|x| x%3==2}>=2
        puts 2
    else
        puts (-1)
    end
else
    if n.length>1 && (n.include?(2) || n.include?(5) || n.include?(8))
        puts 1
    elsif n.length>2 && n.count{|x| x%3==1}>=2
        puts 2 
    else 
        puts (-1)
    end
end
