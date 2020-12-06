n,w=gets.split.map(&:to_i)
users=[]
max_time=0
over_flg=0
n.times do
    user=gets.split.map(&:to_i)
    users<<user
end
(0..n-1).each do |i|
    if users[i][1]>max_time
        max_time = users[i][1]
    end
end

serves=Array.new(max_time+1,0)
users.each do |u|
    serves[u[0]] += u[2]
    serves[u[1]] -= u[2]
end
sum=0
serves.each do |srv|
    sum +=srv
    if sum>w
        puts 'No'
        exit
    end
end
puts 'Yes'
# users.each do |u|
#     (u[0]..u[1]-1).each do |j|
#         serves[j] += u[2]
#     end
# end
# if serves.max>w
#     puts 'No'
# else
#     puts 'Yes'
# end