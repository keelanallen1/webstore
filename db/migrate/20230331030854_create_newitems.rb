class CreateNewitems < ActiveRecord::Migration[7.0]
  def change
    create_table :newitems do |t|
      t.string :names
      t.integer :price
      t.string :description
      t.integer :quantity

      t.timestamps
    end
  end
end
