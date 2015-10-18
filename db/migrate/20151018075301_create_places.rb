class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.references :user, index: true, foreign_key: true
      t.string :latitude
      t.string :longitude
      t.integer :rate

      t.timestamps null: false
    end
  end
end
