class CreatePhotos < ActiveRecord::Migration[6.0]
  def change
    create_table :photos do |t|
      t.string  :name,             null: false
      t.string  :explanation
      t.integer :camera_id,        null: false
      t.integer :lenz_id,          null: false
      t.integer :lenz_type_id,     null: false
      t.integer :iso_speed_id,     null: false
      t.string  :exposure_time
      t.string  :aperture
      t.string  :focal
      t.integer :white_balance_id, null: false
      t.string  :flash_id,         null: false
      t.string  :shooting_place
      t.date    :shooting_date
      t.integer :user_id,        null: false, foreign_key: true
      t.timestamps
    end
  end
end
