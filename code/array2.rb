# n = 100
# max = Math.sqrt(n).floor

# (2..max).each_with_object((2..n).to_a) do |i, array|
#     array.reject!{|j| j % i == 0 unless j == i}
# end

array = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610, 987, 1597, 2584, 4181, 6765]
hash = {1=>1, 2=>1, 3=>2, 4=>3, 5=>5, 6=>8, 7=>13, 8=>21, 9=>34,10=>55, 11=>89, 12=>144, 13=>233, 14=>377, 15=>610, 16=>987, 17=>1597, 18=>2584, 19=>4181, 20=>6765}

p array.find{|x| x % 13 == 0}
p hash.find{|i, x| x % 11 == 0}
# p array.select{|x| x % 13 == 0}.first
# hash.select{|i, x| x % 11 == 0}.first