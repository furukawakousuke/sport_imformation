class CreateInformation < ActiveRecord::Migration[6.1]
  def change
    create_table :information do |t|
      t.integer :customer_id
      t.integer :sport_genre_id
      t.integer :prefecture_genre_id
      t.string :title
      t.text :introduction

      t.timestamps
    end
  end
end
