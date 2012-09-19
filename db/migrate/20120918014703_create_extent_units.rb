class CreateExtentUnits < ActiveRecord::Migration
  def change
    create_table :extent_units do |t|
      t.string :name

      t.timestamps
    end
  end
end
