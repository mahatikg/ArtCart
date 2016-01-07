class CreateArtpieces < ActiveRecord::Migration
  def change
    create_table :artpieces do |t|
      t.string :title
      t.string :artist
      t.string :style
      t.integer :painting_id

      t.timestamps null: false
    end
  end
end
