class CreateArtpieces < ActiveRecord::Migration
  def change
    create_table :artpieces do |t|
      t.string :title
      t.string :artist
      t.integer :style_id
      t.integer :painting_id
      t.string :image

      t.timestamps null: false
    end
  end
end
