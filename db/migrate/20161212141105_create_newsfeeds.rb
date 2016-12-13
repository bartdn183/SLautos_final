class CreateNewsfeeds < ActiveRecord::Migration[5.0]
  def change
    create_table :newsfeeds do |t|
      t.string :title
      t.string :message
      t.integer :user_id

      t.timestamps
    end
  end
end
