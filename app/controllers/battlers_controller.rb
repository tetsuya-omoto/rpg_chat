class BattlersController < ApplicationController
  def index
    monster = ['スライム', 'ゴブリン', 'ゴーレム', '魔王の側近', '魔王', '姫']
    @monster = monster[rand(5)]
  end
end
