class CreateSubjectSources < ActiveRecord::Migration
  def change
    create_table :subject_sources do |t|
      t.string :subject_source
      t.string :ead_source

      t.timestamps
    end
  end
end
