class CreateCreatorBookRelationships < ActiveRecord::Migration
  def change
    create_table :creator_book_relationships do |t|
      t.integer :book_id
      t.integer :creator_id
      t.boolean :primary_creator

      t.timestamps
    end
  end
end
