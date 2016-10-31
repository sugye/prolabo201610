sleep 1
$scene = 'select1'

$kuzi = 0
$ret = 0

def story_do(paramsa,paramsb,question,reanswer,goa,gob)
  case $scene
  when 'select1'
    puts "#{question}"
    sleep 1
    puts "選択肢 a:#{paramsa}, b:#{paramsb}"

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




while true
  case $ret
  when 0
    #一番目のプログラム
    $ret = story_do('バカンス気分、ハワイ','誰も知らない、無人島',"船で旅行しに出かけます。\n何所へ向かいますか？",'a か bを入力してください。',1,2)
    puts 'ret:' + $ret.to_s

  when 1
    #一番目の実行結果が一の時ときに実行
    $ret = story_do('カジノ','海水浴','何所で遊びますか？','a か b 入力してください。',4,5)
    puts 'ret:' + $ret.to_s

  when 2
    puts "帰れなくなりました。fin"
    break

  when 4
    puts "カジノで遊びました。HAPPY,fin"
    $kuzi = 1
    break

  when 5 
    puts "海水浴でクラゲに刺され痒い思いをしました。fin"
    $kuzi = 0
    break
  end
end

