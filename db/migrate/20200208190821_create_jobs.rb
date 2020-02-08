class CreateJobs < ActiveRecord::Migration[5.2]
  def change
    create_table :jobs do |t|
      t.string :name
      t.string :description
      t.string :category
      t.string :duration

      t.references :user

      t.timestamps
    end
  end
end
