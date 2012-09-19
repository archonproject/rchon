class CreateProcessingPriorities < ActiveRecord::Migration
  def change
    create_table :processing_priorities do |t|
      t.string :processing_priority
      t.integer :sort_order
      t.text :description

      t.timestamps
    end
  end
end
