class AddReadToMagazines < ActiveRecord::Migration
  def change
    add_column :magazines, :read, :boolean
  end
end
