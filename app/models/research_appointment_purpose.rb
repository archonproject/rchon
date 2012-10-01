class ResearchAppointmentPurpose < ActiveRecord::Base
  attr_accessible :name
  has_many :researchAppointments
end
