array = %w[foo bar baz]
# p array.find{|x| x.start_with?("b")}.capitalize  # nilの時はエラーになってしまう

p array.find{|x| x.start_with?("b")}&.capitalize
p array.find{|x| x.start_with?("c")}&.capitalize

hash = {"a" => 1, "A" => 2, "B" => 2, "c" => 3, "C" => 1}
p hash.each_with_object(Hash.new(0)){
  |(k, v), h| h[k.downcase] += v
}
