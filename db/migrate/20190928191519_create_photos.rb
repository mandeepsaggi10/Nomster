class CreatePhotos < ActiveRecord::Migration[5.2]
  def change
    create_table :photos do |t|
      t.text :caption
      t.integer :user_id
      t.integer :place_id
      t.timestamps
    end

     add_index :photos, [:user_id, :place_id]
    add_index :photos, :place_id
  end
end
