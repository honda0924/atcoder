n=gets.chomp.to_i
towns=[]
aoki=[]
takahashi=[]
n.times do
  town=gets.split.map(&:to_i)
  aoki << town[0]
  takahashi << town[1]
end

aoki_sum=aoki.sum
takahashi_sum=0
(0..n-1).each do |i|
  towns << aoki[i]*2+takahashi[i]
end
cnt=0
towns=towns.sort.reverse
(0..n-1).each do |i|
  cnt+=1
  takahashi_sum += towns[i]
  if takahashi_sum > aoki_sum
    puts cnt
    break
  end
end