class AddAttachmentImageToDemots < ActiveRecord::Migration
  def self.up
    change_table :demots do |t|
      t.attachment :image
    end
  end

  def self.down
    drop_attached_file :demots, :image
  end
end
