class CreatePurchases < ActiveRecord::Migration[5.1]
  def change
    create_table :purchases do |t|
      t.boolean :pickup
      t.string :delivery_address
      t.references :user, foreign_key: true
      t.references :bicycle, foreign_key: true 
      

      t.timestamps
    end
  end
end
