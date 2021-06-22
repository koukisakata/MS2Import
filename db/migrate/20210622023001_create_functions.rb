class CreateFunctions < ActiveRecord::Migration[5.2]
  def change
    create_table :functions do |t|
      t.string :name
      t.string :disp_name
      t.string :func_description
      t.string :selectables

      t.timestamps
    end
  end
end
