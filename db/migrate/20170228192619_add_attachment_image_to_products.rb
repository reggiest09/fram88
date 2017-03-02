class AddAttachmentImageToProducts < ActiveRecord::Migration[5.0]
  def self.up
    change_table :products do |t|
      t.attachment :image
    end
  end

  
end