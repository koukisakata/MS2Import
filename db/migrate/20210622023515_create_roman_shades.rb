class CreateRomanShades < ActiveRecord::Migration[5.2]
  def change
    create_table :roman_shades do |t|
      t.string :code
      t.string :functions
      t.integer :price
      t.string :brand
      t.string :taste

      t.timestamps
    end
  end
end
