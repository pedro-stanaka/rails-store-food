class CreateIntoleranceTypes < ActiveRecord::Migration
  def change
    create_table :intolerance_types do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
