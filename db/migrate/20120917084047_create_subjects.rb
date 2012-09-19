class CreateSubjects < ActiveRecord::Migration
  def change
    create_table :subjects do |t|
      t.string :subject
      t.integer :subject_type_id
      t.integer :subject_source_id
      t.integer :parent_id
      t.string :identifier
      t.text :description

      t.timestamps
    end
  end
end
