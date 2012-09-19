class CreateRepositories < ActiveRecord::Migration
  def change
    create_table :repositories do |t|
      t.string :name
      t.string :administrator
      t.string :code
      t.string :address
      t.string :address2
      t.string :city
      t.string :state
      t.string :country
      t.integer :zip
      t.string :phone
      t.string :phone_ext
      t.string :fax
      t.string :email
      t.string :url
      t.text :email_signature
      t.integer :research_functionality

      t.timestamps
    end
  end
end
