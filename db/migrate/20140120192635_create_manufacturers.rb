class CreateManufacturers < ActiveRecord::Migration
  def change
    create_table :manufacturers do |t|
      t.text :name
      t.date :since

      t.timestamps
    end
  end
end
