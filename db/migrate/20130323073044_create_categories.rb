class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name

      t.timestamps
    end
    create_table 'categories_demots', :id => false do |t|
      t.integer :category_id, :null => false
      t.integer :demot_id,    :null => false
    end

  end
end
