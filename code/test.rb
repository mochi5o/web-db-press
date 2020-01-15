# print 100 * 1.1 == 110 #false
# 浮動小数点で計算せずに有理数クラスを使う
print 100 * 1.1r == 110

# インクリメントの書き方
# i = 10
# while i <= 20
#   puts i
#   i += 1
# end

# i = 10
# while i <= 20
#  puts i
#  i = i.succ
# end

# 範囲オブジェクトを使った書き方
# (10..20).each{|i| puts i}

#イテレータを使うRubyらしい書き方
10.upto(20).each{|i| puts i}

# 割り算の途中でオフセットをひく
ALPHABET = ("A".."Z").to_a
s, q = "", 2019
loop do
  q, r = (q - 1).divmod(26)
  s.prepend(ALPHABET[r])
  puts s
  break s if q.zero?
end # => "BYQ"

# 時間がかかる書き方（100万超えてくると有意な差がある）
s = "A"
(2019 - 1).times{s.succ!}
puts s # => "BYQ"

# 標準入力の比較ーこれはNG（改行が入るため）
# loop{break if gets == "exit"}

# chompオプションを使う
loop{break if gets(chomp: true) == "exit"}

# 文字列の一致（正規表現を使わずに表す）
string = "|l|l|llll||"
a = "|l|l|lll||"
b = "||l"
c = "l||"
# ==メソッドを使う
string == a # => false
# String#start_with?メソッドを使う
string.start_with?(b) # => false
# String#end_with?メソッドを使う
string.end_with?(c) # => true

# \d 10進数字 にマッチしたらNG
# https://rubular.com/というサイトでチェックできる
s = "llll1lll"
raise "No numbers please" if s.match?(/\d/)

# 空白ごとの区切りでの文字列の分割は.splitでそのままいける
"MINASWAN".split("")
# => ["M", "I", "N", "A", "S", "W", "A", "N"]
"a programmer's best friend".split
# => ["a", "programmer's", "best", "friend"]
"foo\nbar\nbaz\n".lines(chomp: true)
# => ["foo", "bar", "baz"]

# scanメソッドで文字列検索して条件に一致しているか探す
# scan = self に対して pattern を繰り返しマッチし、マッチした部分文字列の配列を返します。
string2 = %{"Come, Watson, come!" he cried. "The game is afoot. Not a word! Into your clothes and come!}
string2.scan(/[\w']+/)

string3 = %{"Come, Watson, come!" he cried. "The game is afoot. Not a word! Into your clothes and come! Me's your's}
# => "\"Come, Watson, come!\" he cried. \"The game is afoot. Not a word! Into your clothes and come! Me's your's"
string3.scan(/[\w']+/)
# => ["Come", "Watson", "come", "he", "cried", "The", "game", "is", "afoot", "Not", "a", "word", "Into", "your", "clothes", "and", "come", "Me's", "your's"]
string3.scan(/[\w]+/)
# => ["Come", "Watson", "come", "he", "cried", "The", "game", "is", "afoot", "Not", "a", "word", "Into", "your", "clothes", "and", "come", "Me", "s", "your", "s"]

# scanを使わずに区切りだけで分割して切り出し
"03-1234-5678".split("-", 2).first
# => "03"
"03-1234-5678".partition("-").first
# => "03"

# 破壊的な文字列の変更ー大文字にして逆さまにする
strings = ["foo", "Bar", "BAZ"]
strings.map!{|s| s.upcase.reverse}  # これは使えるけど
strings.each{|s| s.upcase!.reverse!}  # これはエラー（upcaseがnulを返すことがあるから）
# Rubyらしい書き方ー破壊的なメソッドはつなげない
strings.each{|s| s.upcase!; s.reverse!}

# 配列とハッシュを作るー範囲オブジェクトから
(1..3).map{|i| i**2}
# => [1, 4, 9]
# こうも書ける（Rubyらしい）
Array.new(3){|i| (i + 1)**2}

# ハッシュを作るときはこんな感じ
(1..3).to_h{|i| [i, i**2]}
# => {1=>1, 2=>4, 3=>9}
