class AddAttachmentPicture3ToProducts < ActiveRecord::Migration
  def self.up
    change_table :products do |t|
      t.attachment :picture3
    end
  end

  def self.down
    remove_attachment :products, :picture3
  end
end
