n,k=gets.split.map(&:to_i)
cards = gets.split.map(&:to_i)
displayed_cards = []
turn = 1
covered_flg = false
results = Array.new(n,-1)

cards.each_with_index do |c, index|
  displayed_cards.each do |dc|
    if c < dc[0]
      dc << c
      if dc.length == k
        dc.each do |i|
          results[i-1] = turn
        end
        dc.delete_at(index+1)
        covered_flg = true
        break
      end
    end
  end
  if covered_flg == false
    displayed_cards << [c]
  end
  covered_flg = false
  turn += 1
end

results.each do |i|
  puts i
end
