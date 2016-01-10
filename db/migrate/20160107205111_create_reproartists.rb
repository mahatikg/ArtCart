class CreateReproartists < ActiveRecord::Migration
  def change
    create_table :reproartists do |t|
      t.string :name
      t.references :style
      t.timestamps null: false
    end
  end
end
