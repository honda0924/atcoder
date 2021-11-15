n=gets.chomp.to_i
times = []
skills = []
answer = 0
n.times do
  skill = gets.split.map(&:to_i)
  times << skill[0]
  skills << skill.drop(2).map{|x| x-1}
end
answer = 0
steps = skills[-1] | [n-1]
while true do
  tmp = steps.length
  steps.each do |i|
    steps = steps | skills[i]
  end
  if steps.length == tmp
    break
  end
end
steps.each do |i|
  answer += times[i]
end
puts answer
