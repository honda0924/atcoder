s,t =gets.split.map(&:to_i)
ans = 0
(0..s).each do |a|
  (0..s).each do |b|
    (0..s).each do |c|
      if a+b+c <=s && a * b * c <= t
        ans += 1
      end
    end
  end
end

puts ans