class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string :name
      t.string :address
      t.float :latitude
      t.float :longitude
      t.integer :rate
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
