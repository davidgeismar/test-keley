class AddAttachmentPicture2ToProducts < ActiveRecord::Migration
  def self.up
    change_table :products do |t|
      t.attachment :picture2
    end
  end

  def self.down
    remove_attachment :products, :picture2
  end
end
