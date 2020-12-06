n=gets.chomp.to_i
i = Math.sqrt(n).to_i
while true do
    if (i+2)*(i+1)/2>=n+1
        puts n-i+1
        break
    else
        i+=1
    end
end
