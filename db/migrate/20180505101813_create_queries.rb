class CreateQueries < ActiveRecord::Migration[5.1]
  def change
    create_table :queries do |t|
      t.text :question
      t.text :answer
      t.references :bicycle, foreign_key: true

      t.timestamps
    end
  end
end
