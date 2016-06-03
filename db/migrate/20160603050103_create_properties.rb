class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.string :title
      t.text :address
      t.text :description
      t.integer :type
      t.decimal :price
      t.string :city
      t.references :agency, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
