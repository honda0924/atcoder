n=gets.chomp.to_i
points=[]
answer=0
n.times do
  point = gets.split.map(&:to_i)
  points << point
end
points.sort!{|a,b|a[0]<=>b[0]}
(0..n-3).each do |i|
  (i..n-2).each do |j|
    (j..n-1).each do |k|
      if (points[k][0]-points[j][0])*(points[j][1]-points[i][1])!=(points[j][0]-points[i][0])*(points[k][1]-points[j][1]) && (points[j][0]-points[i][0])*(points[i][1]-points[k][1])!=(points[i][0]-points[k][0])*(points[j][1]-points[i][1])
        answer += 1
      end
    end
  end
end
puts answer