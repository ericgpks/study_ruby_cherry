text = <<TEXT
I love Ruby.
Python is a great language.
Java and JavaScript are different.
TEXT

p text.scan(/[A-Z][A-Za-z]+/)

text2 = <<TEXT
私の郵便番号は1234567です。
僕の住所は6770056　兵庫県西脇市板波町1234だよ。
TEXT

puts text2.gsub(/(\d{3})(\d{4})/, '\1-\2')

text = <<-TEXT
名前：伊藤淳一
電話：03-1234-5678
住所：兵庫県西脇市板波町1-2-3
TEXT
p text.scan /\d\d-\d\d\d\d-\d\d\d\d/

text = <<-TEXT
クープバゲットのパンは美味しかった。
今日はクープ バゲットさんに行きました。
クープ　バゲットのパンは最高。
ジャムおじさんのパン、ジャムが入ってた。
また行きたいです。クープ・バゲット。
クープ・バケットのパン、売り切れだった（><）
TEXT

p text.split(/\n/).grep(/クープ.?バ[ゲケ]ット/)


html = <<-HTML
<select name="game_console">
<option value="none"></option>
<option value="wii_u" selected>Wii U</option>
<option value="ps4">プレステ4</option>
<option value="gb">ゲームボーイ</option>
</select>
HTML

replaced = html.gsub(/<option value="(\w+)"(?: selected)?>(.*)<\/option>/, '\1,\2')

puts replaced


text = <<-TEXT
def hello(name)
  puts "Hello, \#{name}!"
end

hello('Alice')
     
hello('Bob')
	
hello('Carol')
TEXT

puts text.gsub(/^[ \t]+$/, '')


text = <<-TEXT
type=zip; filename=users.zip; size=1024;
type=xml; filename=posts.xml; size=2048;
TEXT

puts text.scan(/(?<=filename=)[^;]+/)


text = <<-TEXT
type=zip; filename=users.zip; size=1024;
type=xml; filename=posts.xml; size=2048;
TEXT

puts text.scan(/filename=[^;]+/).map { |s| s.split('=').last }


text = <<-TEXT
John:guitar, George:guitar, Paul:bass, Ringo:drum
Freddie:vocal, Brian:guitar, John:bass, Roger:drum
TEXT

puts text.scan(/\w+(?=:bass)/)

p '123-4567' =~ /\d{3}-\d{4}/
p 'hello' =~ /\d{3}-\d{4}/

p 'hello' !~ /\d{3}-\d{4}/

text = "私の誕生日は1977年7月17日です"
m = /(\d+)年(\d+)月(\d+)日/.match(text)
p m
p m.class
p m[0]
p m[1]
p text.match(/(\d+)年(\d+)月(\d+)日/)
m = /(?<year>\d+)年(?<month>\d+)月(?<day>\d+)日/.match(text)
p m
p m[:year]