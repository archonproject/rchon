class AddBookCollectionJoinTable < ActiveRecord::Migration
  def up
    create_table :books_collections, :id => false do |t|
      t.integer :book_id
      t.integer :collection_id
    end

    add_index :books_collections, :collection_id
    add_index :books_collections, :subject_id
    add_index [:collection_id, :subject_id], :uniq => true    
  end

  def down
    drop_table :books_collections
  end
end
