class CreateAllergyTypes < ActiveRecord::Migration
  def up
    create_table :allergy_types do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
  def down
  	drop_table :allergy_types
  end
end
