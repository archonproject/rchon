class CreateCollectionLocationEntries < ActiveRecord::Migration
  def change
    create_table :collection_location_entries do |t|
      t.integer :collection_id
      t.integer :location_id
      t.string :content
      t.string :range_value
      t.string :section
      t.string :shelf
      t.decimal :extent
      t.integer :extent_unit_id

      t.timestamps
    end
  end
end
