n=gets.chomp.to_i
periods=[]
n.times do
  period = gets.split.map(&:to_i)
  periods << period
end
periods.sort!{|a,b| a[2] <=> b[2]}.sort!{|a,b| a[1]<=>b[1]}
ans = 0
(0..periods.length-2).each do |i|
  (i+1..periods.length-1).each do |j|
    if periods[i][2] > periods[j][1]
      ans += 1
    elsif periods[i][2] == periods[j][1]
      if periods[i][0] % 2 == 1 && periods[j][0]<= 2
        ans += 1
      end
    end
  end
end
puts ans