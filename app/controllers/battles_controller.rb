class BattlesController < ApplicationController

  def index
    monster = ['スライム', 'ゴブリン', 'ゴーレム', '魔王の側近', '魔王', '姫']
    @monster = monster[rand(5)]
    @damage = rand(1..100)
  end
end