class CreateCars < ActiveRecord::Migration[6.1]
  def change
    create_table :cars do |t|
      t.string :name
      t.string :model
      t.integer :price
      t.text :image

      t.timestamps
    end
  end
end
