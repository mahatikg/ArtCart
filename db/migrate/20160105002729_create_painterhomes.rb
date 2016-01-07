class CreatePainterhomes < ActiveRecord::Migration
  def change
    create_table :painterhomes do |t|
      t.string :name
      t.integer :painter_id
      t.string :style
      t.text :blurb

      t.timestamps null: false
    end
  end
end
