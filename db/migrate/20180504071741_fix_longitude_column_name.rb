class FixLongitudeColumnName < ActiveRecord::Migration[5.1]
  def change
    rename_column :addresses, :longitute, :longitude
  end
end
