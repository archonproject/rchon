class AddDigitalContentSubjectJoinTable < ActiveRecord::Migration
  class AddCollectionContentSubjectJoinTable < ActiveRecord::Migration
    def up
      create_table :digital_contents_subjects, :id => false do |t|
        t.integer :digital_content_id
        t.integer :subject_id
      end

      add_index :digital_contents_subjects, :digital_content_id
      add_index :digital_contents_subjects, :subject_id
      add_index [:digital_content_id, :subject_id], :uniq => true    
    end

    def down
      drop_table :digital_contents_subjects
    end
  end
end
