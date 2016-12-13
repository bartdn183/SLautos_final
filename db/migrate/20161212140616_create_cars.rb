class CreateCars < ActiveRecord::Migration[5.0]
  def change
    create_table :cars do |t|
      t.integer :make_id
      t.integer :doors
      t.string :ext_color
      t.string :int_color
      t.integer :year
      t.integer :owners
      t.string :transmission
      t.string :fuel
      t.text :description
      t.integer :hp
      t.string :engine
      t.decimal :price
      t.integer :total_km

      t.timestamps
    end
  end
end
