class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :address
      t.string :country
      t.string :timezone

      t.timestamps
    end
  end
end
