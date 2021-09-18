p_array = gets.split.map(&:to_i)
ans = []
chars = ['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z']
p_array.each do |s|
  ans << chars[s-1]
end
puts ans.join