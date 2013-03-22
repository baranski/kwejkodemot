class CreateDemots < ActiveRecord::Migration
  def change
    create_table :demots do |t|
      t.string :title,        null: false
      t.integer :votes_count, null: false, default: 0
      t.boolean :active,      default: false
      t.integer :user_id,     null: false

      t.timestamps
    end
    add_index :demots, :user_id
    # add_attachment :demots, :image
  end
end
