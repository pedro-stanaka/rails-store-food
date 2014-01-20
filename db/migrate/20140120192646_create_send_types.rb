class CreateSendTypes < ActiveRecord::Migration
  def change
    create_table :send_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
