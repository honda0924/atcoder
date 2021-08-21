s, k = gets.chomp.split
strs=s.split('').permutation.to_a
k=k.to_i
candidates=[]
strs.each do |a|
  candidates<<a.join
end
puts candidates.sort.uniq[k-1]

