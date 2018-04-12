class AddAdminToUsers < ActiveRecord::Migration
  def change
    add_column :users, :admininistrador, :integer
  end
end
