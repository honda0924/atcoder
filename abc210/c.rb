n,k = gets.split.map(&:to_i)
candies = gets.split.map(&:to_i)
takahashi_candies = candies.slice(0, k)
unique_candy = takahashi_candies.uniq.length
tmp_unique_candy = unique_candy
(0..n-k-1).each do |i|
    takahashi_candies.shift()
    tmp_unique_candy = takahashi_candies.include?(candies[i]) ? tmp_unique_candy : tmp_unique_candy - 1 

    tmp_unique_candy = takahashi_candies.include?(candies[i+k]) ? tmp_unique_candy : tmp_unique_candy + 1 


    takahashi_candies.push(candies[i+k])
    if tmp_unique_candy > unique_candy
      unique_candy = tmp_unique_candy
    end
end
puts unique_candy