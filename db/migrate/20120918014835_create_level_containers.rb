class CreateLevelContainers < ActiveRecord::Migration
  def change
    create_table :level_containers do |t|
      t.string :name
      t.string :ead_level
      t.boolean :intellectual_level
      t.boolean :physical_container
      t.boolean :primary_ead_level
      t.boolean :global_numbering

      t.timestamps
    end
  end
end
