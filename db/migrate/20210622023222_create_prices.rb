class CreatePrices < ActiveRecord::Migration[5.2]
  def change
    create_table :prices do |t|
      t.integer :section
      t.string :disp_value

      t.timestamps
    end
  end
end
