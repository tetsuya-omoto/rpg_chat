# coding: utf-8
class Battler
 
  def initialize(battlername)
    @name = battlername
  end
 
  def attack_point
    10
  end
 
  attr_accessor :name
  attr_accessor :attack_message
  attr_accessor :hp
  attr_accessor :ap
  
end

class Hero < Battler
  # 拡張とポリモルフィズム
  def get_downed_message
    message = ["うわぁぁぁぁー！", "ひでぶ！！", "いたぁああああい"]
    message.rand(2)
  end
  
  # 拡張とポリモルフィズム
  def attack_point
    if rand(5) >= 3 # 1～5のランダム値が3以上か？
      30 # クリティカルヒット
    else
      10 # 通常攻撃
    end
  end
 
  # 拡張とポリモルフィズム
  def attack
    sleep 2
    @attack_message = "いくぜ！！！"
    [ @attack_message, attack_point]
  end

  def hipower_attack
    
  end 
end

#soldier = Battler.new("戦士")
#witch = Battler.new("魔法使い")


class Monster < Battler
  # 拡張とポリモルフィズム
  def get_downed_message
    "ぐぉぉぉぉぉー！"
  end
 
  # 拡張とポリモルフィズム
  def attack_point
    if rand(5) >= 4 #1～5のランダム値が4以上か？
      20 # クリティカルヒット
    else
      15 # 通常攻撃
    end
  end
  
  # 拡張とポリモルフィズム
  def attack
    sleep 2
    @attack_message = "GURRRR"
    [ @attack_message, attack_point ]
  end
end
  monster = ['スライム', 'ゴブリン', 'ゴーレム', '魔王の側近', '魔王', '姫']
  #monster = Monster.new("スライム")