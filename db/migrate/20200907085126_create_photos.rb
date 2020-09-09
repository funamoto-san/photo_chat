class CreatePhotos < ActiveRecord::Migration[6.0]
  def change
    create_table :photos do |t|
      t.string :name,            null: false
      t.string :camera
      t.string :lens
      t.string :iso_speed
      t.string :exposure_time
      t.string :aperture
      t.string :focal
      t.string :white_balance
      t.string :flash
      t.string :shooting_place
      t.date :shooting_date

      t.timestamps
    end
  end
end
