class AddPrefectureToCustomers < ActiveRecord::Migration[6.1]
  def change
    add_column :customers, :prefecture, :integer
  end
end
