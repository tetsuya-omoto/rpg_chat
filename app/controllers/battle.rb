monster_sort = ['スライム', 'ゴブリン', 'ゴーレム', '魔王の側近', '魔王', '姫']


while true do
  puts <<~EOS
    メニューを選択してください
    1:たたかう
    2:にげる
    3:必殺技！！
  EOS
  input = gets.to_i
  case input

  when 1
    attack = hero.attack
    puts hero.name + "の攻撃！"
    puts attack[0].to_s
    if monster.name == '姫'
      sleep 1
      puts "攻撃が姫に当たってしまった"
      puts "GAME OVER"
      exit
    end
    puts attack[1].to_s + "のポイントを与えた！"
    attack = monster.attack
    puts monster.name + "の攻撃！"
    puts attack[0].to_s
    puts attack[1].to_s + "のポイントのダメージを受けた！"
    
  when 2
    puts 'また遊んでね！！'
    exit
  when 3
    puts '必殺技の名前を入力してください'
    input = gets.to_s
    hipower_name = input
    sleep 2
    attack = hero.attack
    puts hero.name + "の必殺技！！"
    sleep 1
    puts attack[0].to_s
    puts "#{hipower_name}"
    if monster.name == '姫'
      sleep 1
      puts "攻撃が姫に当たってしまった"
      puts "GAME OVER"
      exit
    end
    sleep 1
    puts attack[1].to_s + "億のポイントを与えた！"
    sleep 1
    puts "#{monster.name}は倒れた"
    sleep 1
    puts "#{hero.name}は#{rand(100..1000)}の経験値を得た"
    exit
  else
    puts "入力に誤りがあります"
  end

   
end