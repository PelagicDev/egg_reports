class CreateDailyReports < ActiveRecord::Migration
  def change
    create_table :daily_reports do |t|
      t.integer :hatch
      t.integer :cull
      t.integer :double
      t.integer :hen_deaths
      t.integer :male_deaths
      t.decimal :hen_feed
      t.decimal :male_feed
      t.references :house, index: true
      t.integer :house_id

      t.timestamps
    end
  end
end
