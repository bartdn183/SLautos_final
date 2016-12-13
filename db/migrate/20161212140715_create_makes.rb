class CreateMakes < ActiveRecord::Migration[5.0]
  def change
    create_table :makes do |t|
      t.string :brand
      t.string :model
      t.string :type

      t.timestamps
    end
  end
end
