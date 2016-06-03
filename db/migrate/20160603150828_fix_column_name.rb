class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :properties, :type, :property_type
  end
end
