class CreateProducts < ActiveRecord::Migration[7.1]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.string :images
      t.date :launch_date
      t.decimal :price
      t.string :currency
      t.boolean :active

      t.timestamps
    end
  end
end
