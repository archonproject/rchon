class AddCollectionContentCreatorJoinTable < ActiveRecord::Migration
  def up
    create_table :collection_contents_creators, :id => false do |t|
      t.integer :collection_content_id
      t.integer :creator_id
    end

    add_index :collection_contents_creators, :collection_content_id
    add_index :collection_contents_creators, :creator_id
    add_index [:collection_content_id, :creator_id], :uniq => true    
  end

  def down
    drop_table :collection_contents_creators
  end
end
