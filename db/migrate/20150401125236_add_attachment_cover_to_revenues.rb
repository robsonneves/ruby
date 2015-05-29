class AddAttachmentCoverToRevenues < ActiveRecord::Migration
  def self.up
    change_table :revenues do |t|
      t.attachment :cover
    end
  end

  def self.down
    remove_attachment :revenues, :cover
  end
end
