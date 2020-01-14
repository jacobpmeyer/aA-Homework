class CreateHouse < ActiveRecord::Migration[5.2]
  def change
    create_table :houses do |t|
      t.text :address, null: false

      t.timestamp
    end
  end
end
