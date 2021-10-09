n=gets.chomp.split('')
class Array
  def diff(ary)
    temp = self.dup # selfの破壊を防ぐため。
    ary.each do |val|
      idx = temp.index(val)
      next if idx == nil # ary2の要素がary1にないときはパス。
      temp.delete_at(idx)
     end
     temp
  end
end
if n.length == 2
  puts n[0].to_i * n[1].to_i
  exit
end
ans=0
(1..n.length - 2).each do |i|
  a_array=n.combination(i).to_a
  a_array.each do |a|
    b=n.diff(a)
    if a.uniq == ['0'] || b.uniq == ['0']
      next
    else
      tmp_a = a.sort.reverse.join.to_i
      tmp_b = b.sort.reverse.join.to_i
      if ans<tmp_a * tmp_b
        ans = tmp_a*tmp_b
      end
    end
  end
end
puts ans