class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.string :names
      t.integer :price
      t.string :description
      t.integer :quantity

      t.timestamps
    end
  end
end
