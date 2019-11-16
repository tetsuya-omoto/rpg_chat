class CreateBattlers < ActiveRecord::Migration[5.2]
  def change
    create_table :battlers do |t|
      t.string :name
      t.timestamps
    end
  end
end
