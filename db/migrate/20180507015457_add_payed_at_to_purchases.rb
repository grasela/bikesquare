class AddPayedAtToPurchases < ActiveRecord::Migration[5.1]
  def change
    add_column :purchases, :payed_at, :datetime
  end
end
