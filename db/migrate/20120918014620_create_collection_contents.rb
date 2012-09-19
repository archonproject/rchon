class CreateCollectionContents < ActiveRecord::Migration
  def change
    create_table :collection_contents do |t|
      t.integer :collection_id
      t.integer :level_container_id
      t.integer :root_content_id
      t.integer :parent_id
      t.integer :sort_order
      t.string :level_container_identifier
      t.string :date
      t.boolean :contains_content
      t.boolean :enabled
      t.text :title
      t.text :private_title
      t.text :description

      t.timestamps
    end
  end
end
