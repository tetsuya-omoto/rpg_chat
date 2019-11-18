class CreateBattles < ActiveRecord::Migration[5.2]
  def change
    create_table :battles do |t|
      t.string :text
      t.string :answer
      t.timestamps
    end
  end
end
