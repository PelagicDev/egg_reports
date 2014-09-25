class CreateFlocks < ActiveRecord::Migration
  def change
    create_table :flocks do |t|
      t.integer :hens
      t.integer :males
      t.integer :hen_feed
      t.integer :male_feed
      t.decimal :water_meter
      t.date :open_date
      t.date :close_date
      t.references :house, index: true
      t.integer :house_id

      t.timestamps
    end
  end
end
