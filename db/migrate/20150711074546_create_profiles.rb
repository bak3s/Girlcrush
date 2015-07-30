class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :caption, null: false, limit: 180
      t.string :location, null: false, limit: 180
      t.string :gender, null: false, limit: 180
      t.text :biography, null: false
      # SDP: Should age be an integer instead?
      t.string :age, null: false
      # SDP: Should probably add an index on this column
      # SDP: You can also add constraints which is a more advanced concept
      t.integer :user_id, null: false

      t.timestamps null: false
    end
    add_index :profiles, :user_id
  end
end
