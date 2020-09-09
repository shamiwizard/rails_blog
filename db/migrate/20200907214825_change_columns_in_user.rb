class ChangeColumnsInUser < ActiveRecord::Migration[6.0]
  def change
    change_column :users, :username, :string, null: false, limit: 250
    change_column :users, :first_name, :string, null: false, limit: 250
    change_column :users, :last_name, :string,  null: false, limit: 250
    change_column :users, :type, :string, default: 'member'
  end
end
