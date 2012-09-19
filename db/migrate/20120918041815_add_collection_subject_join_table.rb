class AddCollectionSubjectJoinTable < ActiveRecord::Migration
  class AddCollectionContentSubjectJoinTable < ActiveRecord::Migration
    def up
      create_table :collections_subjects, :id => false do |t|
        t.integer :collection_id
        t.integer :subject_id
      end

      add_index :collections_subjects, :collection_id
      add_index :collections_subjects, :subject_id
      add_index [:collection_id, :subject_id], :uniq => true    
    end

    def down
      drop_table :collections_subjects
    end
  end
end
