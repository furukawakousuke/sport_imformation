class AddInformationIdToComments < ActiveRecord::Migration[6.1]
  def change
    add_column :comments, :information_id, :integer
  end
end
