class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string  :name
      t.text 	  :description
      t.float   :price
      t.boolean :real
      t.float   :weight

      t.timestamps null: false
    end
    add_index :items, :price
    add_index :items, :name
  end
end
