class CreateCreators < ActiveRecord::Migration
  def change
    create_table :creators do |t|
      t.string :name
      t.string :name_fuller_Form
      t.string :name_variants
      t.integer :creator_type_id
      t.string :dates
      t.string :lcnaf_dates
      t.boolean :lcnaf_compliant
      t.string :biog_hist_author
      t.text :biog_hist
      t.text :sources
      t.integer :respository_id
      t.integer :language_id
      t.integer :script_id
      t.string :identifier
      t.integer :creator_source_id

      t.timestamps
    end
  end
end
