class RenameTypeToMemberTypeInUsers < ActiveRecord::Migration[6.0]
  def change
    rename_column :users, :type, :member_type
  end
end
