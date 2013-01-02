class ResearchAppointmentMaterial < ActiveRecord::Base
  attr_accessible :collection_content_id, :collection_id, :research_appointment_id, :retrieval_time, :retrieval_user_id, :return_time, :return_user_id
  belongs_to :collectionContent
  belongs_to :collection
  belongs_to :researchAppointment
end
