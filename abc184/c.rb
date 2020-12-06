a,b=gets.split.map(&:to_i)
c,d=gets.split.map(&:to_i)

if a==c && b==d
    puts 0
elsif a+b==c+d || a-b==c-d || (a-c).abs+(b-d).abs<=3
    puts 1
else
    if (c-a+b-d)%2==0 || ((a-c).abs-(b-d).abs).abs <=3
        puts 2
    else
        puts 3
    end
end