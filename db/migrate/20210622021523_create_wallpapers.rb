class CreateWallpapers < ActiveRecord::Migration[5.2]
  def change
    create_table :wallpapers do |t|
      t.string :code

      t.timestamps
    end
  end
end
