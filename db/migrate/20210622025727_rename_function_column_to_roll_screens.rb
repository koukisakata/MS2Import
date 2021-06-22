class RenameFunctionColumnToRollScreens < ActiveRecord::Migration[5.2]
  def change
    rename_column :roll_screens, :function, :functions
  end
end
