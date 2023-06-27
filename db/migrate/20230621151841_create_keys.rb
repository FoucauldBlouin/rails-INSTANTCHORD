class CreateKeys < ActiveRecord::Migration[7.0]
  def change
    create_table :keys do |t|
      t.string :name
      t.string :variable

      t.timestamps
    end
  end
end
