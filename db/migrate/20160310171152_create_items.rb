class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string  :name
      t.float   :price
      t.boolean :real
      t.float   :weight

      t.timestamps null: false
    end
  end
end
