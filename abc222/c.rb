n,m = gets.split.map(&:to_i)
hands = []
ranks = []
def rps(a,b,m,hands,ranks)
  case hands[ranks[a][0]-1][m]
  when 'G'
    if hands[ranks[b][0]-1][m] == 'C'
      ranks[a][1] += 1
    elsif hands[ranks[b][0]-1][m] == 'P'
      ranks[b][1] += 1
    end
    
  when 'C'

    if hands[ranks[b][0]-1][m] == 'P'
      ranks[a][1] += 1
    elsif hands[ranks[b][0]-1][m] == 'G'
      ranks[b][1] += 1
    end
  else
    if hands[ranks[b][0]-1][m] == 'G'
      ranks[a][1] += 1
    elsif hands[ranks[b][0]-1][m] == 'C'
      ranks[b][1] += 1
    end
  end
end
(0..2*n-1).each do |i| 
  hand = gets.chomp.split('')
  hands << hand
  ranks << [i+1,0]
end
(0..m-1).each do |i|
  (0..n-1).each do |j|
    rps(2*j,(2*j)+1,i,hands,ranks)
  end
  ranks.sort!{|a,b| a[0]<=>b[0]}
  ranks.sort!{|a,b| b[1]<=>a[1]}
end
ranks.each do |rank|
  puts rank[0]
end
