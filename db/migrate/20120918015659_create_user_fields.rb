class CreateUserFields < ActiveRecord::Migration
  def change
    create_table :user_fields do |t|
      t.integer :collection_content_id
      t.integer :ead_element_id
      t.string :title
      t.text :value

      t.timestamps
    end
  end
end
