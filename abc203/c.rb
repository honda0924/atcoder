n,k = gets.split.map(&:to_i)
friends = []
n.times do
  friend = gets.split.map(&:to_i)
  friends << friend
end
friends.sort!{|a,b| a[0]<=>b[0]}
friends.each do |friend|
  if k<friend[0]
    break
  else
    k += friend[1]
  end
end
puts k