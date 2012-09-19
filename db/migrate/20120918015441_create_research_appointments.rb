class CreateResearchAppointments < ActiveRecord::Migration
  def change
    create_table :research_appointments do |t|
      t.integer :submit_time
      t.integer :researcher_id
      t.integer :appointment_purpose_id
      t.integer :arrival_time
      t.integer :departure_time
      t.string :topic
      t.text :researcher_comments
      t.text :archivist_comments

      t.timestamps
    end
  end
end
