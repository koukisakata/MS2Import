class CreateTastes < ActiveRecord::Migration[5.2]
  def change
    create_table :tastes do |t|
      t.string :name
      t.string :disp_name
      t.string :image
      t.string :image2
      t.string :image3

      t.timestamps
    end
  end
end
