class CreateResarchCarts < ActiveRecord::Migration
  def change
    create_table :resarch_carts do |t|
      t.integer :researcher_id
      t.integer :collection_id
      t.integer :collection_content_id

      t.timestamps
    end
  end
end
