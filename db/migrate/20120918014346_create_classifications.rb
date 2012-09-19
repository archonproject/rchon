class CreateClassifications < ActiveRecord::Migration
  def change
    create_table :classifications do |t|
      t.integer :parent_id
      t.integer :creator_id
      t.string :classification_identifier
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
