class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.integer :size
      t.decimal :price
      t.datetime :expires_at

      t.timestamps
    end
  end
end
