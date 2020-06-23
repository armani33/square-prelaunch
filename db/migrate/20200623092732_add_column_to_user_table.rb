class AddColumnToUserTable < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :type, :string
    add_column :users, :insta_username, :string
  end
end
