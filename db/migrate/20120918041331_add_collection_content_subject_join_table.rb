class AddCollectionContentSubjectJoinTable < ActiveRecord::Migration
  def up
    create_table :collection_contents_subjects, :id => false do |t|
      t.integer :collection_content_id
      t.integer :subject_id
    end

    add_index :collection_contents_subjects, :collection_content_id
    add_index :collection_contents_subjects, :subject_id
    add_index [:collection_content_id, :subject_id], :uniq => true    
  end

  def down
    drop_table :collection_contents_subjects
  end
end
