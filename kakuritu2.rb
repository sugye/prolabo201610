# a.b.cはクイズとストーリーランニングの結果を反映
a = 1
b = 0
c = a + b + 1 

# くじ回数と確率の説明
puts 'ガチャ確率'
puts ('0 = 6%, 1～30 = 50%, 31～50 = 25%, 51～80 = 15%, 81～90 = 3%, 91～100 = 1%')
puts
puts ("                  くじ回数は#{c}回")

#ガチャ用データ
$data = { 0 => { 'name' => "{(1..30)}", 'rate' => 50 }, 1 => { 'name' => "{(31..50)}", 'rate' => 25 }, 2 => { 'name' => "{(51..80)}", 'rate' => 15 }, 3 => { 'name' => "{(0)}", 'rate' => 6 }, 4 => { 'name' => '{(81..90)}', 'rate' => 3 }, 5 => { 'name' => "{(91..100)}", 'rate' => 1 } }

 def gacha()
 #確率の合計値
  max = 0
  $data.each_value do |record|
   max = max + record['rate']
  end
  #当たりの決定
  hit = rand(max - 1)
  #当たった乱数がどの部分になるのか調べてヒットしたら返す
  $data.each do |key, record|
   max = max - record['rate']
   #puts 'maxv ' + max.to_s
   #puts 'hit'  + hit.to_s
   if (max <= hit) then
   #puts 'key'  + key.to_s
    return key
   end
  end
 end



# ガチャ結果をランダムで抽出
def kekka(k1) 
  m = 0
  if k1=="{(1..30)}"
    m = rand(1..30)
  elsif k1=="{(31..50)}"
    m = rand(31..50)
  elsif k1=="{(51..80)}"
    m = rand(51..80)
  elsif k1=="{(0)}"
    m = rand(0)
  elsif k1=="{(81..90)}"
    m = rand(81..90)
  elsif k1=="{(91..100)}"
    m = rand(91..100)
  end
 return m.to_i
end

# iは最低でも引けるくじ回数
i = 1
# くじ回数上限まで繰り返す処理
j = 1
while i <= c do
  puts
  puts '                                                   くじを引く'
  gets
  puts "                  #{i}回目"
  i += 1
  k1 = ($data[gacha()]['name'])
  puts
  tmp = kekka(k1)
  puts ("                                 #{tmp}")
  j += tmp
end

puts 
puts '                                                   結果を見る'
gets

#　結果を表示
print "\e[31m"
puts "                             結果は #{j}"
print "\e[0m"
