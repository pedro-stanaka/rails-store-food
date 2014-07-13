class CreateManufacturers < ActiveRecord::Migration
  def up
    create_table :manufacturers do |t|
      t.text :name
      t.date :since

      t.timestamps
    end
  end

  def down
  	drop_table :manufacturers
  end
end
