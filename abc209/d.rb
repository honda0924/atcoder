n,q = gets.split.map(&:to_i)
node_array = []
query_array = []
(n-1).times do
  node = gets.split.map(&:to_i)
  node_array << node
end
q.times do
  query = gets.split.map(&:to_i)
  query_array << query
end
