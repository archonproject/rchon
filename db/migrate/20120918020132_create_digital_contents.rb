class CreateDigitalContents < ActiveRecord::Migration
  def change
    create_table :digital_contents do |t|
      t.boolean :browsable
      t.string :title
      t.integer :collection_id
      t.integer :collection_content_id
      t.string :identifier
      t.text :scope
      t.text :physical_description
      t.string :date
      t.string :publisher
      t.string :contributor
      t.text :rights_statement
      t.string :content_url
      t.boolean :hyperlink_url

      t.timestamps
    end
  end
end
