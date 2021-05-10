k, n, m =gets.split.map(&:to_i)
country_grades = gets.split.map(&:to_i)
village_grades = country_grades.map.with_index{|x, index| [x * m / n, index] }

