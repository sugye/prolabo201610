
puts "\e[H\e[2J"

puts"=========================="
puts"       第一ステージ       "
puts"          クイズ          "
puts"==========================" 

sleep 1
puts "\e[H\e[2J"

puts "  *～～～～～～～～～～～*"
puts "  |     1.Ruby           |"
puts "  |     2.音楽           |"
puts "  |     3.スポーツ       |"
puts "  *～～～～～～～～～～～*"
puts "  ________________________"
puts " |  選択したいジャンルの  |"   
puts " |  数字を記入してください|"
puts " |________________________|"

# getsで入力が出来る様にし,入力した値をinput_valueに格納している
input_value = gets   

# case文を入れることにより、入力した値に対して分岐をさせている
# to_iでinput_valueに格納された値を整数に変換している
case input_value.to_i

when 1
  scene = 'ruby'  
when 2
  scene = 'music'
when 3
  scene = 'sports'
else
  scene = 'extra'
end

puts "\e[H\e[2J"

case scene
  when 'ruby'
    #{"答えになる数字"=>"問題文と選択肢"}という定義をしている
    rubyq = {"1"=>" Rubyは誰を中心に開発を進められたでしょうか？\n\n\n\n 1.まつもと ゆきひろ氏  2.ジェームズ・ゴスリン氏\n 3.まつもと ひろゆき氏  4.デニス・リッチー氏",
             "2"=>" Rubyは何指向をベースとしたプログラミング言語でしょうか？\n\n\n\n 1.メソッド   2.オブジェクト\n 3.モジュール 4.クラス",
             "3"=>" 次のうちでRubyの予約語はどれでしょうか？\n\n\n\n 1.try   2.null\n 3.begin 4.goto",
             "4"=>" モジュールとは？\n\n\n\n 1.数値  2.範囲\n 3.配列  4.クラスのようなもの"}
      #rand（ランダム）にsort（並び替え）している
      rq = rubyq.sort_by{rand} 

      seikai_count = 0
      kuji_count   = 0


      rq.each do |key,value|  #keyは答え、valueは問題文
        puts"┌────────────────────────────────────────────────────────┐"
        puts "#{value}"
        puts"└────────────────────────────────────────────────────────┘"
        A = gets.chomp

        if A == key
          puts "\e[H\e[2J"
          puts '正解です'
          seikai_count += 1  #ここで正解数のカウントをしている
          c = STDIN.getc
          puts "\e[H\e[2J"
        else
          puts "\e[H\e[2J"
          puts "不正解です。"
          c = STDIN.getc
          puts "\e[H\e[2J"
      end
  end

puts " あなたの正解数は#{seikai_count}問です!!!"

  when 'music'

    musicq = {"1"=>" 歴代シングルCD売り上げ1位は？\n\n\n\n 1.およげ！たいやきくん  2.空も飛べるはず\n 3.世界に一つだけの花    4.TSUNAMI",
              "2"=>" 世界最古の楽器は何でしょう？\n\n\n\n 1.太鼓   2.フルート\n 3.ピアノ 4.ギター",
              "3"=>" 音楽の3大要素ではないものは？\n\n\n\n 1.メロディー  2.リズム\n 3.フレーズ    4.ハーモニー",
              "4"=>" この中で最も売れたアーティストはどれ？\n\n\n\n 1.エアロ・スミス       2.B'z\n 3サザンオールスターズ  4.ザ・ビートルズ"}

      mq = musicq.sort_by{rand} 

      seikai_count = 0
      kuji_count   = 0

      mq.each do |key,value|  #valueは問題文、keyは答え
      
        puts"┌────────────────────────────────────────────────────────┐"
        puts "#{value}"
        puts"└────────────────────────────────────────────────────────┘"
        
        A = gets.chomp

        if A == key
          puts "\e[H\e[2J"
          puts '正解です'
          seikai_count += 1
          c = STDIN.getc
          puts "\e[H\e[2J"
        else
          puts "\e[H\e[2J"
          puts "不正解です。"
          c = STDIN.getc
          puts "\e[H\e[2J"
      end
  end

puts " あなたの正解数は#{seikai_count}問です!!!"

  when 'sports'

    sportsq = {"1"=>" リオ五輪で最も金メダルを獲得した国は？\n\n\n\n1.アメリカ  2.日本\n3.イギリス  4.中国",
               "2"=>" サッカーは基本的に何人でやるでしょう？\n\n\n\n1.10人  2.11人\n3.12人  4.13人",
               "3"=>" 陸上の公式大会でのトラック1周の距離は？\n\n\n\n1.50m  2.200m\n3.400m 4.800m",
               "4"=>" ハットトリックの語源の由来となった協議は？\n\n\n\n1.ラクロス  2.サッカー\n3.ホッケー  4.クリケット"}

      sq = sportsq.sort_by{rand} 

      seikai_count = 0
      kuji_count   = 0

      sq.each do |key,value|  #valueは問題文、keyは答え
        
        puts"┌────────────────────────────────────────────────────────┐"
        puts "#{value}"
        puts"└────────────────────────────────────────────────────────┘"

        A = gets.chomp

        if A == key
          puts "\e[H\e[2J"
          puts '正解です'
          seikai_count += 1
          c = STDIN.getc
          puts "\e[H\e[2J"
        else
          puts "\e[H\e[2J"
          puts "不正解です。"
          c = STDIN.getc
          puts "\e[H\e[2J"
        end
      end

puts " あなたの正解数は#{seikai_count}問です!!!"

  when 'extra'
    
    puts" ________________________________________"
    puts"| 1～3でジャンルを選ばなかったあなたには |"
    puts"|   特別な問題を用意致しております!!     |"
    puts"|________________________________________|"
    c = STDIN.getc
    puts "\e[H\e[2J"

    extraq = {"1"=>" 北海道の面積は約何km2でしょう？\n\n\n\n1.83,450 km2  2.73,550 km2\n3.93,450 km2  4.69,850 km2",
              "2"=>" 2016年における全国で店舗数が３番目に多いコンビニは？\n\n\n\n1.セブンイレブン   2.ローソン\n3.ファミリーマート 4.ミニストップ",
              "3"=>" 次のうち、俳句の季語に認定されていないのは？\n\n\n\n1.サザン   2.ユーミン\n3.チューブ 4.山下達郎",
              "4"=>" 7＋7÷7＋7×7－7＝？\n\n\n\n1.0   2.8\n3.49  4.50"}

      eq = extraq.sort_by{rand} 

      seikai_count = 0
      kuji_count   = 0

      eq.each do |key,value|  #valueは問題文、keyは答え
      
        puts"┌────────────────────────────────────────────────────────┐"
        puts "#{value}"
        puts"└────────────────────────────────────────────────────────┘"
        
        A = gets.chomp

        if A == key
          puts "\e[H\e[2J"
          puts '正解です'
          seikai_count += 1
          c = STDIN.getc
          puts "\e[H\e[2J"
        else
          puts "\e[H\e[2J"
          puts "不正解です。"
          c = STDIN.getc
          puts "\e[H\e[2J"
        end
      end

puts " あなたの正解数は#{seikai_count}問です!!!"

end


case seikai_count.to_i

  when 0
    puts "別のジャンルがいいかも..."
  when 1
    puts "またの挑戦を..."
  when 2
    kuji_count +=1
    puts "よくできました！" 
    puts " くじ引き券を#{kuji_count}枚もらった!!!"
  when 3
    kuji_count +=1
    puts "大変よくできました！"
    puts " くじ引き券を#{kuji_count}枚もらった!!!"
    sleep 1
    puts "ヽ(*ﾟ▽ﾟ)ﾉ~▽▼▽[祝]▼▽▼~ヾ(ﾟ▽ﾟ*)ﾉ"
    puts " くじ引き券を#{kuji_count}枚もらった!!!"
  when 4
    kuji_count +=1
    puts"全問正解です"
    puts " くじ引き券を#{kuji_count}枚もらった!!!"
    sleep 1
    puts "\e[H\e[2J"
    puts"全問正解です"
    puts " くじ引き券を#{kuji_count}枚もらった!!!" 
    
    puts("\e[33m
                  ｜        
              ／￣￣￣＼
            ／          ＼
           ｜            ｜
           ｜            ｜
            ＼__________／
                  ｜ 
                  Φ  \e[0m")
    

    sleep 2
    puts "\e[H\e[2J"
    puts"全問正解です"
    puts " くじ引き券を#{kuji_count}枚もらった!!!"
   
    puts("\e[33m
                 ｜
             ／￣￣￣＼
           ／          ＼
          ｜     ∧     ｜
          ｜   ／川＼   ｜
           ＼／ *┷┓  ＼／
             。┃祝┃｡
            ﾞ#ﾟ┃!!┃:｡
           : ｡･┃全┃･ #
           ｡:ﾞ#┃問┃# ｡
          ﾞ･#: ┃正┃｡ : ｡
          # ﾞ｡ﾟ┃解┃ ﾟ｡#
          ｡:ﾞ:｡ *┯┛｡# : #
          ﾞ∧_∧ │
          (`･ω･)│
          /    つΦ    \e[0m")
    
end



c = STDIN.getc
puts "\e[H\e[2J"


puts"=========================="
puts"   ! ボーナスステージ!    "
puts"=========================="

sleep 1
puts "\e[H\e[2J"

system('clear')
$scene = 'select1'

$ret = 0

def story_do(paramsa,paramsb,question,reanswer,goa,gob)
  case $scene
  when 'select1'
    puts "□■━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
 ■　     #{question}
 ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

    puts
    puts
    puts "〓〓〓〓〓★選択肢 a:#{paramsa}, b:#{paramsb} ★〓〓〓〓〓"

    #①フ繰り返し（～の間）
    while true
      input_country = gets
 
      case input_country.chomp
      when 'a'
        scene = goa

        #ブレイクで①を破壊する。
        break
      when 'b'
        scene = gob

        #ブレイクで①を破壊する。
        break
      else
        #入力みすなのでブレイクさせない、もう一度入力させる。
        puts (reanswer)
      end
    end

    #ループの終了後のsceneの戻り値
    return scene
  end
end


system('clear')

while true
  case $ret
  when 0
    #一番目のプログラム
    $ret = story_do('一発逆転  ラスベガスでカジノ','誰も知らない、無人島',"船で旅行しに出かけます。何所へ向かいますか？",'a か bを入力してください。',1,2)

system('clear')

  when 1
    #一番目の実行結果がaの時ときに実行
    $ret = story_do('ポーカー','スロット','何所で遊びますか？','a か bを入力してください。',4,5)

  when 2
    puts "誰も知らない、無人島に辿り着いたぞ！"
    sleep 2
    puts
    puts "ザザッ、ザザッ"
    sleep 2
    puts
    puts "何か音がするな？"
    sleep 2
    puts
    puts "うわあああああ!!!"
    sleep 3
    puts
    puts "この島から生きて帰った者はいない"
    sleep 2
    puts
    puts "誰も知らない、無人島"
    sleep 1
    puts
    puts "DEAD END"
    sleep 1
    puts" 　　 ／￣￣＼"
    puts" 　／　　 _ノ　　＼"
    puts" 　|　　　 （ ●）（●）"
    puts".　|　　　　 （__人__）　この終わり方はおかしいだろ・・・"
    puts"　 |　　　　　｀ ⌒´ﾉ　　常識的に考えて・・・"
    puts".　 |　　　　　　 　 }"
    puts".　 ヽ　　　　　 　 }"
    puts"　　 ヽ　　　　　ノ　　　　　　　　＼"
    puts"　　　/　　　 く　　＼　　　　　　　 ＼"
    puts"　　　|　　　　 ＼ 　 ＼ 　 　　　　　　＼"
    puts"　 　 |　　　　|ヽ、二⌒)､　 　 　　　　　 ＼"
    break

when 4
    puts "\e[H\e[2J"
    puts "せっかくカジノに来たからポーカーでもやってみるか！！"
    sleep 2
    puts
    puts "ﾃﾞｨｰﾗｰ「掛け金はどうするんだい？」"
    sleep 2
    puts
    puts "俺はこの全部のチップを賭けるぜ！！"
    sleep 2
    puts
    puts "ﾃﾞｨｰﾗｰ「GOOD!!」"
    sleep 1
    puts
    puts "ササッ、ササッ"
    sleep 2
    puts
    puts "何もそろわなかった..."
    sleep 2
    puts
    puts "これで俺の人生は終わりだ・・・"
    sleep 2
    puts
    puts  "ﾃﾞｨｰﾗｰ「お客さんしょうがないからこれを持ってきな！」"
    sleep 2
    puts
    puts "くじ引き券を手に入れた"
    puts "END"
    puts"　∧＿＿∧  これが最後かな"
    puts"（ ´・ω・`)　 (○) "
    puts",( ヽ∩∩ノ),、ヽ|〃,,, "
    puts"“““ ““ ““ ““ ““ ““ ““ “``““ ““"
    kuji_count +=1
    break

  when 5 
    puts "\e[H\e[2J"
    puts "せっかくカジノに来たからスロットでもやってみるか！！"
    sleep 2
    puts
    puts "チャリーン"
    sleep 2
    puts
    puts "ガラガラガラガラ・・・"
    sleep 3
    puts
    puts "ドスン！！"
    sleep 2
    puts
    puts "７７７"
    sleep 2
    puts
    puts "これで俺も大富豪の仲間入りだ！"
    sleep 2
    puts
    puts "せっかく大金を手に入れたんだ！遊ぶぞ！！"
    sleep 2
    puts
    puts "豪遊！"
    sleep 2
    puts
    puts "2日続けて、豪遊！"
    sleep 2
    puts
    puts "そして、散財ｯ！！！"
    puts
    puts"　　　 ,, -─‐-､,,-─-,､"
    puts"　　　　 / 　 　　　　　,'⌒ヽ＼"
    puts"　　　　〈 　,‐-⌒-、ノ,,,　　|.　 ＼"
    puts"　　　　/,　ﾐ､Vヽl〉| | |,,,　　|.　　　＼"
    puts"　　　　 '|＼Nヘ｢ヽ||_|＿＿,|.　　　　 ＼"
    puts"　　　 　 　 　 　 　 |L.|　　|　　　　　　　ヽ、"
    puts"　　　　　　　　　　　 | |　,,,|,　　　　　　　　.l"
    puts".　　　　　 　 　 　 　 |_|＿,||　　　　　　　 .ﾉ"
    puts"　 　 　 　 　 　 　 　 |::|::: :|_|　　　　 　 ,ノ |"
    puts"　　 　 　 　 　 　 rrr´‐::: :j. Ｌ,,---‐‐'´　ノ"
    puts"　 　 　 　 　 　 i´＾^i´￣~　　　￣￣￣~i‐⌒ヽ,"
    puts"　 　 　 　 　 　 ヽ､__ヽ､＿＿＿＿＿＿」-､＿_.⌒っ"
    puts"　　　　　　　　　　　　　　　　　　　　　　　　　　￣"
    puts "BAD END"
    break
  end
end

puts"=========================="
puts" ! ボーナスステージ終了!  "
puts"=========================="

c = STDIN.getc
system('clear')

puts"=========================="
puts"       くじ引き会場       "
puts"=========================="

sleep 2
puts "\e[H\e[2J"

puts "くじ引き券は持ってきたかい？"
sleep 1
puts "持っていても持っていなくても"
puts "1回はおまけをしてやろう！"

c = STDIN.getc
puts "\e[H\e[2J"

# a.b.cはクイズとストーリーランニングの結果を反映
c = kuji_count.to_i +  1

# くじ回数と確率の説明
puts 'くじ確率'
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
    m =rand(0)
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
j = 0
while i <= c do
  puts
  puts '                                                   くじを引く'
  gets
  puts "                  #{i}回目"
  i += 1
  k1 = ($data[gacha()]['name'])
  puts
  tmp = kekka(k1)
  puts ("\e[33m                                 
  　                ┌───────────────┐
　                  │　 　 　 　 　 │
　                  │      #{tmp}       │  
　                  │　 　 　 　 　 │
　                     (ﾖ─∧＿∧─E)
　                  ＼（* ´∀｀）／
　 　                  Y 　　　 Y\e[0m")
  j += tmp
end

puts
puts '                                                   結果を見る'
gets

#　結果を表示
print "\e[31m"
puts "                    |￣￣￣￣￣￣￣￣|
                  　|---結果は  #{j}---|
                  　|＿＿＿＿＿＿＿＿|
　　                 　 ∧∧ ||
　               　　 ( ﾟдﾟ)||
　                 　 /  　づΦ"
print "\e[0m"

