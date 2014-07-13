class DropSubCategory < ActiveRecord::Migration
  def up
    drop_table :sub_categories
  end

  def down
    create_table :sub_categories do |t|
      t.column :name, :string
      t.column :description, :string

      t.timestamps
    end
  end
end
