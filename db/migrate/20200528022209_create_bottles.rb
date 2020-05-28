class CreateBottles < ActiveRecord::Migration[6.0]
  def change
    create_table :bottles do |t|
      t.string :name
      t.integer :vintage
      t.integer :size
      t.string :brand

      t.timestamps
    end
  end
end
