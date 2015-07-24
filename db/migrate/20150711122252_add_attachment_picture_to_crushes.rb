class AddAttachmentPictureToCrushes < ActiveRecord::Migration
  def self.up
    change_table :crushes do |t|
      t.attachment :picture
    end
  end

  def self.down
    remove_attachment :crushes, :picture
  end
end
