class CreateCreatorRelationships < ActiveRecord::Migration
  def change
    create_table :creator_relationships do |t|
      t.integer :creator_id
      t.integer :related_creator_id
      t.integer :creator_relationship_type_id
      t.text :description

      t.timestamps
    end
  end
end
