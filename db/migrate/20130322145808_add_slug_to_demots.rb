class AddSlugToDemots < ActiveRecord::Migration
  def change
    add_column :demots, :slug, :string
    add_index :slug, unique: true
  end
end
