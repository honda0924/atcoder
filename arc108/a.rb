a,b=gets.split.map(&:to_i)
if (a*a-4*b)<0
    puts 'No'
else
    x=(a-Math.sqrt(a*a-4*b))/2
    if x>0 && x-x.to_i==0
        puts 'Yes'
    else
        puts 'No'
    end    
end
