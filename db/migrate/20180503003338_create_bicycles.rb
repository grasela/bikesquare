class CreateBicycles < ActiveRecord::Migration[5.1]
  def change
    create_table :bicycles do |t|
      t.string :title
      t.decimal :price
      t.text :description
      t.string :brand
      t.string :type
      t.string :size
      t.string :colour
      t.string :gender
      t.string :year
      t.string :serial_no
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
