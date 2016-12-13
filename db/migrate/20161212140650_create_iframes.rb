class CreateIframes < ActiveRecord::Migration[5.0]
  def change
    create_table :iframes do |t|
      t.string :iframe

      t.timestamps
    end
  end
end
