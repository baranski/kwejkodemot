class ChangeUser < ActiveRecord::Migration
  def up
    remove_column :users, :admin
    add_column :users, :admin, :boolean, default: false, null: false
  end

  def down
  end
end
