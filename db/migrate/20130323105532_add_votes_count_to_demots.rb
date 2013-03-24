class AddVotesCountToDemots < ActiveRecord::Migration
  def change
    add_column :votes_count, :integer, default: 0, null: false
  end
end
