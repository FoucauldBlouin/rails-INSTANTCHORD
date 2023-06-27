class CreateStyles < ActiveRecord::Migration[7.0]
  def change
    create_table :styles do |t|
      t.string :chord_style
      t.string :bass_style

      t.timestamps
    end
  end
end
