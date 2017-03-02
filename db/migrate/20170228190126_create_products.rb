class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :title
      t.string :subtitle
      t.decimal :price
      t.string :download_url

      t.timestamps null: false

     
    end
  end
end
