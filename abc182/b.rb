n=gets.chomp.to_i
a=gets.split.map(&:to_i)
cnt=0
ans=2
(2..1000).each do |k|
  a_map=a.map{|x| x%k}
  if a_map.count(0)>cnt
    cnt=a_map.count(0)
    ans=k
  end
end
puts ans