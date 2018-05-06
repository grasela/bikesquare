class AddUserIdToQueries < ActiveRecord::Migration[5.1]
  def change
    add_reference :queries, :user, foreign_key: true
  end
end
