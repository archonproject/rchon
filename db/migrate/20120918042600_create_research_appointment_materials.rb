class CreateResearchAppointmentMaterials < ActiveRecord::Migration
  def change
    create_table :research_appointment_materials do |t|
      t.integer :research_appointment_id
      t.integer :collection_id
      t.integer :collection_content_id
      t.integer :retrieval_time
      t.integer :retrieval_user_id
      t.integer :return_time
      t.integer :return_user_id

      t.timestamps
    end
  end
end
