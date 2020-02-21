class RemoveBusinessSizeFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :business_size, :integer
  end
end
