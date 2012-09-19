class CreateDigitalContentCreatorRelationships < ActiveRecord::Migration
  def change
    create_table :digital_content_creator_relationships do |t|
      t.integer :digital_content_id
      t.integer :creator_id
      t.boolean :primary_creator

      t.timestamps
    end
  end
end
