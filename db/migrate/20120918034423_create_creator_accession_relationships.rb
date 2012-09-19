class CreateCreatorAccessionRelationships < ActiveRecord::Migration
  def change
    create_table :creator_accession_relationships do |t|
      t.integer :accession_id
      t.integer :classification_id
      t.integer :collection_id
      t.boolean :primary_collection

      t.timestamps
    end
  end
end
