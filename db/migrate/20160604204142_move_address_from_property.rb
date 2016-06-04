class MoveAddressFromProperty < ActiveRecord::Migration
  def change
    remove_column :properties, :address
  end
end
