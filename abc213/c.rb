h,w,n=gets.split.map(&:to_i)
array=[]
(1..n).each do |i|
  card=gets.split.map(&:to_i)
  card.push(i)
  array << card
end
h_index=0
h_tmp=0
array.sort!{|a,b| a[0]<=>b[0]}
array.each do |card|
  if card[0]==h_tmp
    card[0]=h_index
  else
    h_index += 1
    h_tmp=card[0]
    card[0]=h_index
  end
end
w_index=0
w_tmp=0
array.sort!{|a,b| a[1]<=>b[1]}
array.each do |card|
  if card[1]==w_tmp
    card[1]=w_index
  else
    w_index += 1
    w_tmp=card[1]
    card[1]=w_index
  end
end
array.sort!{|a,b| a[2]<=>b[2]}
array.each do |card|
  puts card[0].to_s + ' ' + card[1].to_s
end
