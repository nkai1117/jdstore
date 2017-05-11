class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :title
      t.string :string
      t.text :description
      t.integer :price
      t.string :integer
      t.integer :quantity

      t.timestamps
    end
  end
end
