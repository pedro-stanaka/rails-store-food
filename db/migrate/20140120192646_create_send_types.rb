class CreateSendTypes < ActiveRecord::Migration
  def up
    create_table :send_types do |t|
      t.string :name
      t.timestamps
    end
  end

  def down
  	drop_table :send_types
  end
end
