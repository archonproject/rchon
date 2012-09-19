class CreateCreatorSources < ActiveRecord::Migration
  def change
    create_table :creator_sources do |t|
      t.string :creator_source
      t.string :source_abbreviation
      t.text :citation
      t.text :description

      t.timestamps
    end
  end
end
