n=gets.chomp.to_i
dice_array=[]
(1..n).each do |i|
  d=gets.split.map(&:to_i)
  if d[0]==d[1]
    dice_array << 1
  else
    dice_array << 0
  end
end
cnt=0
flg=0
dice_array.each do |a|
  if a==1
    cnt += 1
    if cnt == 3
      flg=1
      break
    end
  else
    cnt=0
  end
end
if flg==1
  puts 'Yes'
else
  puts 'No'
end