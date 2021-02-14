# h,w=gets.split.map(&:to_i)
# grids = []
# h.times do
#   l= gets.chomp.split('')
#   grids << l
# end
# n=0
# n_3=0
# (1..h-2).each do |i|
#   (1..w-2).each do |j|
#     if grids[i][j]=='#'
#       if ((grids[i-1][j]=='#' ? 1 : 0) + (grids[i-1][j-1]=='#' ? 1 : 0) + (grids[i][j-1]=='#' ? 1 : 0)) ==2
#         n+=1
#         n_3+=1
#       elsif ((grids[i-1][j]=='#' ? 1 : 0) + (grids[i-1][j-1]=='#' ? 1 : 0) + (grids[i][j-1]=='#' ? 1 : 0)) ==0
#         n+=1
#       end
#       if ((grids[i-1][j]=='#' ? 1 : 0) + (grids[i-1][j+1]=='#' ? 1 : 0) + (grids[i][j+1]=='#' ? 1 : 0)) ==2
#         n+=1
#         n_3+=1
#       elsif ((grids[i-1][j]=='#' ? 1 : 0) + (grids[i-1][j+1]=='#' ? 1 : 0) + (grids[i][j+1]=='#' ? 1 : 0)) ==0
#         n+=1
#       end
#       if ((grids[i+1][j]=='#' ? 1 : 0) + (grids[i+1][j-1]=='#' ? 1 : 0) + (grids[i][j-1]=='#' ? 1 : 0)) ==2
#         n+=1
#         n_3+=1
#       elsif ((grids[i+1][j]=='#' ? 1 : 0 )+ (grids[i+1][j-1]=='#' ? 1 : 0) + (grids[i][j-1]=='#' ? 1 : 0)) ==0
#         n+=1
#       end
#       if ((grids[i+1][j]=='#' ? 1 : 0) + (grids[i+1][j+1]=='#' ? 1 : 0) + (grids[i][j+1]=='#' ? 1 : 0)) ==2
#         n+=1
#         n_3+=1
#       elsif ((grids[i+1][j]=='#' ? 1 : 0) + (grids[i+1][j+1]=='#' ? 1 : 0) + (grids[i][j+1]=='#' ? 1 : 0)) ==0
#         n+=1
#       end
    
#     end
#   end
# end
# puts n-(n_3*3)
h,w=gets.split.map(&:to_i)
grids = []
h.times do
  l= gets.chomp.split('')
  grids << l
end
n=0
(1..h-2).each do |i|
  (1..w-2).each do |j|
    if grids[i][j]=='#'
      if ((grids[i-1][j]=='#' ? 1 : 0) + (grids[i-1][j-1]=='#' ? 1 : 0) + (grids[i][j-1]=='#' ? 1 : 0)) ==0
        n+=1
      end
      if  ((grids[i-1][j]=='#' ? 1 : 0) + (grids[i-1][j+1]=='#' ? 1 : 0) + (grids[i][j+1]=='#' ? 1 : 0)) ==0
        n+=1
      end
      if ((grids[i+1][j]=='#' ? 1 : 0 )+ (grids[i+1][j-1]=='#' ? 1 : 0) + (grids[i][j-1]=='#' ? 1 : 0)) ==0
        n+=1
      end
      if  ((grids[i+1][j]=='#' ? 1 : 0) + (grids[i+1][j+1]=='#' ? 1 : 0) + (grids[i][j+1]=='#' ? 1 : 0)) ==0
        n+=1
      end
    
    end
  end
end
puts n