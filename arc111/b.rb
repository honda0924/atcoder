n=gets.chomp.to_i
cards=[]
ans_array=[]
n.times do
  card = gets.split.map(&:to_i)
  cards << card
end
cards.each do |card|
  if card[0]<card[1]
    card=card.reverse!
  end
end
cards.sort_by!{|a| [a[0],a[1]]}.reverse!
cards.each_with_index do |card,index|
  if index>0 && card[0]==cards[index-1][0]
      card=card.reverse!
  end
end
cards.sort_by!{|a| [a[0],a[1]]}.reverse!
cards.each_with_index do |card,index|
  if index>0 && card[0]==cards[index-1][0]
    ans_array << card[1]
  else
    ans_array << card[0]
  end
end
puts ans_array.uniq.length