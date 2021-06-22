class CreateRollScreens < ActiveRecord::Migration[5.2]
  def change
    create_table :roll_screens do |t|
      t.string :code
      t.string :function
      t.integer :price

      t.timestamps
    end
  end
end
