class AddAccessionSubjectJoinTable < ActiveRecord::Migration
  def up
    create_table :accessions_subjects, :id => false do |t|
      t.integer :accession_id
      t.integer :subject_id
    end

    add_index :accessions_subjects, :accession_id
    add_index :accessions_subjects, :subject_id
    add_index [:accession_id, :subject_id], :uniq => true
  end

  def down
    drop_table :accessions_subjects
  end
end
