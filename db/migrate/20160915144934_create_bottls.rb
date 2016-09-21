class CreateBottls < ActiveRecord::Migration[5.0]
  def change
    create_table :bottls do |t|
      t.string :sender
      t.text :message
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
