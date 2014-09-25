class CreateHouses < ActiveRecord::Migration
  def change
    create_table :houses do |t|
      t.integer :name
      t.string :farm_name

      t.timestamps
    end
  end
end
