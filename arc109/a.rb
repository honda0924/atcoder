a,b,x,y = gets.split.map(&:to_i)
if (a-b)==0 || (a-b)==1
    puts x
elsif (a-b)<0
    if 2*x > y
        puts x + (b-a)*y
    else
        puts x + (b-a)*2*x
    end
else
    if 2*x > y
        puts x + (a-b-1)*y
    else
        puts x + (a-b-1)*2*x
    end
end
