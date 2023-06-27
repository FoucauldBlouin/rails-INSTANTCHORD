class CreateSongs < ActiveRecord::Migration[7.0]
  def change
    create_table :songs do |t|
      t.string :name
      t.references :key, null: false, foreign_key: true
      t.references :instrument, null: false, foreign_key: true
      t.references :style, null: false, foreign_key: true
      t.binary :midi

      t.timestamps
    end
  end
end
