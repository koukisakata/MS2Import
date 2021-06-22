class CreateLaces < ActiveRecord::Migration[5.2]
  def change
    create_table :laces do |t|
      t.string :code
      t.string :functions
      t.integer :price
      t.string :brand

      t.timestamps
    end
  end
end
