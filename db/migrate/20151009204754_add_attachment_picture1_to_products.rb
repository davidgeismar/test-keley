class AddAttachmentPicture1ToProducts < ActiveRecord::Migration
  def self.up
    change_table :products do |t|
      t.attachment :picture1
    end
  end

  def self.down
    remove_attachment :products, :picture1
  end
end
