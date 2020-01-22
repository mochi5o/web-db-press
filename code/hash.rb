keys = %w[garnet amethyst aquamarine diamond emerald pearl ruby periodot sapphire opal topaz turquoise]
array = %w[garnet amethyst bloodstone sapphire agate emerald onyx carnelian chrysolite beryl topaz ruby]
hash = {
    "garnet" => "Aquarius",
    "amethyst" => "Pisces",
    "bloodstone" => "Aries",
    "sapphire" => "Taurus",
    "agate" => "Gemini",
    "emerald" => "Cancer",
    "onyx" => "Leo",
    "carnelian" => "Virgo",
    "chrysolite" => "Libra",
    "beryl" => "Scorpio",
    "topaz" => "Sagittarius",
    "ruby" => "Capricorn"
}
# 戻り値は一回しか返ってこない
p keys & array

p hash.slice(*keys)

array2 = [1, 17, 14, 9, 3, 16, 15, 3, 18, 13]
p array2.sort
p array2.sort.reverse
p array2.sort_by{|x| Math.cos(x)}
p array2.sort_by{|x| Math.cos(x)}.reverse

hash1 = {"Perl" => "Warhol", "Python" => "van Rossum", "Ruby" => "Mazt"}
hash2 = {"Perl" => "Wall", "Ruby" => "Matz"}
# hash2.each{|k, v| hash1[k] = v}
# p hash1

# mergeすると楽
p hash1.merge!(hash2)