class CreateCrushes < ActiveRecord::Migration
  def change
    create_table :crushes do |t|
      t.string :title, null: false, limit: 180
      t.text :description, null: false
      t.integer :crushed, null: false, default: 0
      t.integer :user_id, null: false

      t.timestamps null: false
    end
  end
end
