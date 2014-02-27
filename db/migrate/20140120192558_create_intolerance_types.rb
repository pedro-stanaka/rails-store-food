class CreateIntoleranceTypes < ActiveRecord::Migration
  def up
    create_table :intolerance_types do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end

  def down
  	drop_table :intolerance_types
  end
end
