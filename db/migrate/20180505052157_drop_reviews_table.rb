class DropReviewsTable < ActiveRecord::Migration[5.1]
  def up
    drop_table :reviews
  end

  def down
    fail ActiveRecord::IrreversibleMigration
  end
end
