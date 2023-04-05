class AddInformationIdToFavorites < ActiveRecord::Migration[6.1]
  def change
    add_column :favorites, :information_id, :integer
  end
end
