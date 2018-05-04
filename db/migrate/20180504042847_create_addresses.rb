class CreateAddresses < ActiveRecord::Migration[5.1]
  def change
    create_table :addresses do |t|
      t.string :house_number
      t.string :street_number
      t.string :street
      t.string :suburb
      t.string :city
      t.string :state
      t.string :country_code
      t.integer :postal_code
      t.decimal :latitude
      t.decimal :longitute
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
