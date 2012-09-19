class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :edition
      t.string :publication_date
      t.string :place_of_publication
      t.string :publisher
      t.string :series
      t.integer :copy_edition
      t.integer :number_of_pages
      t.text :description
      t.text :notes

      t.timestamps
    end
  end
end
