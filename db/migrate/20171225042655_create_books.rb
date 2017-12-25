class CreateBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.integer :publisher_id
      t.integer :shop_id
      t.boolean :sold

      t.timestamps
    end
  end
end
