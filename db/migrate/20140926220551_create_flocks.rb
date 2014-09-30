class CreateFlocks < ActiveRecord::Migration
  def change
    create_table :flocks do |t|
      t.integer :hens
      t.integer :males
      t.decimal :hen_feed
      t.decimal :male_feed
      t.decimal :water_meter
      t.date :open_date
      t.date :close_date
      t.integer :house_id

      t.timestamps
    end
  end
end
