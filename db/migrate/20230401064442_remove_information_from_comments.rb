class RemoveInformationFromComments < ActiveRecord::Migration[6.1]
  def change
    remove_column :comments, :information, :integer
  end
end
