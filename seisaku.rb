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
    puts"        ｜"
    puts"    ／￣￣￣＼"
    puts"  ／          ＼"
    puts" ｜     ∧     ｜"
    puts" ｜   ／川＼   ｜"
    puts"  ＼／ *┷┓＼／"
    puts"    。┃祝┃｡"
    puts"   ﾞ#ﾟ┃!!┃:｡"
    puts"  : ｡･┃全┃･ #"
    puts"  ｡:ﾞ#┃問┃# ｡"
    puts" ﾞ･#: ┃正┃｡ : ｡"
    puts" # ﾞ｡ﾟ┃解┃ ﾟ｡#"
    puts" ｡:ﾞ:｡ *┯┛｡# : #"
    puts" ﾞ∧_∧ │"
    puts" (`･ω･)│"
    puts" /    つΦ" 
    puts " くじ引き券を#{kuji_count}枚もらった!!!"
end

