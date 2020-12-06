n,k=gets.split.map(&:to_i)
t_array=[]
tsum=0
cnt=0
(1..n).each do |t|
    times=gets.split.map(&:to_i)
    t_array << times
end
n_array=[]
(1..n-1).each do |i|
    n_array << i 
end
path_array=n_array.permutation.to_a
path_array.each do |path|
    path.push(0)
    path.unshift(0)
    tsum=0
    (0..n-1).each do |j|
        tsum +=t_array[path[j]][path[j+1]]
    end
    if tsum ==k
        cnt+=1
    end
end

puts cnt

