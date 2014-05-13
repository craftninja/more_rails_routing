class CreateAds < ActiveRecord::Migration
  def change
    create_table :ads do |t|
      t.string :manufacturer
      t.integer :magazine_id

      t.timestamps
    end
    add_index :ads, :magazine_id
  end
end
