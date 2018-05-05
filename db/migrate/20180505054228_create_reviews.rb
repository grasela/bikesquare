class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.text :content
      t.references :reviewer
      t.integer :rating
      t.references :reviewed_user

      t.timestamps
    end
  end
end
