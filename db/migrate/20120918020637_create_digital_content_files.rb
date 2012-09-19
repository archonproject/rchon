class CreateDigitalContentFiles < ActiveRecord::Migration
  def change
    create_table :digital_content_files do |t|
      t.integer :default_access_level
      t.integer :digital_content_id
      t.string :title
      t.integer :display_order

      t.timestamps
    end
  end
end
