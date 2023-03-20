class CreateFavorites < ActiveRecord::Migration[6.1]
  def change
    create_table :favorites do |t|
      t.integer :customer_id
      t.integer :information

      t.timestamps
    end
  end
end