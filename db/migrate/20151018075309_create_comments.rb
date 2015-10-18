class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references :user, index: true, foreign_key: true
      t.references :place, index: true, foreign_key: true
      t.text :description
      t.integer :rate

      t.timestamps null: false
    end
  end
end
