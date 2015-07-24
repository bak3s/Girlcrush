class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :caption, null: false, limit: 180
      t.string :location, null: false, limit: 180
      t.string :gender, null: false, limit: 180
      t.text :biography, null: false
      t.string :age, null: false
      t.integer :user_id, null: false

      t.timestamps null: false
    end
  end
end