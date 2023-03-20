class CreatePrefectureGenres < ActiveRecord::Migration[6.1]
  def change
    create_table :prefecture_genres do |t|
      t.integer :name
      t.timestamps
    end
  end
end
