class CreateResearchAppointmentPurposes < ActiveRecord::Migration
  def change
    create_table :research_appointment_purposes do |t|
      t.string :name

      t.timestamps
    end
  end
end
