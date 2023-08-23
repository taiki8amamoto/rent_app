class CreateStations < ActiveRecord::Migration[6.0]
  def change
    create_table :stations do |t|
      t.string :line
      t.string :station
      t.integer :minute

      t.timestamps
    end
  end
end
