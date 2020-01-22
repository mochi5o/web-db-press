array = [
    ["×", "×", "○"], ["○", "○", "×"], ["×", " ○", "×"]
]
p array.flat_map(&:itself)
# ["×", "×", "○", "○", "○", "×", "×", " ○", "×"]

hash = {
    name: ["田中", nil, "太郎"],
    address: ["東京都", ["港 区", ["芝浦"]]],
    age: [20],
    membership: [false]
}
p hash.transform_values(&:flatten)
# {:name=>["田中", nil, "太郎"], :address=>["東京都", "港 区", "芝浦"], :age=>[20], :membership=>[false]}
# 計測する時は、require 'benchmark' でライブラリを使うといい感じ

languages = ["Mandarin", "Spanish", "English", "Hindi", "Arabic"]
p languages[2, 2]

teeth = {
    "切歯" => {"中_" => 1, "側_" => 2},
    "犬歯" => 3,
    "臼歯" => {"小_" => [4, 5], "大_" => [6, 7, 8]}
}
p teeth.fetch("切歯", {}).fetch("小_", {}).fetch("側_", nil)
# 複雑なJSONはpattern_matchを使うと良さそう
p teeth.dig(*keys_1)
p teeth.dig(*keys_2)
