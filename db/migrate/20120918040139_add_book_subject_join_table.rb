class AddBookSubjectJoinTable < ActiveRecord::Migration
  def up
    create_table :books_subjects, :id => false do |t|
      t.integer :book_id
      t.integer :subject_id
    end

    add_index :books_subjects, :book_id
    add_index :books_subjects, :subject_id
    add_index [:book_id, :subject_id], :uniq => true
  end

  def down
    drop_table :books_subjects
  end
end
