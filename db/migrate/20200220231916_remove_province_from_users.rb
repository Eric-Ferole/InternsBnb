class RemoveProvinceFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :province, :string
  end
end
