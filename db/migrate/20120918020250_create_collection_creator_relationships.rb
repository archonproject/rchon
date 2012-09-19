class CreateCollectionCreatorRelationships < ActiveRecord::Migration
  def change
    create_table :collection_creator_relationships do |t|
      t.integer :collection_id
      t.integer :creator_id
      t.boolean :primary_creator

      t.timestamps
    end
  end
end
