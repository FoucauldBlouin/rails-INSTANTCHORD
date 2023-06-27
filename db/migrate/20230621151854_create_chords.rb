class CreateChords < ActiveRecord::Migration[7.0]
  def change
    create_table :chords do |t|
      t.string :name
      t.references :key, null: false, foreign_key: true

      t.timestamps
    end
  end
end
