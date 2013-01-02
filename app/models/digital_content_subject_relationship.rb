 class DigitalContentSubjectRelationship < ActiveRecord::Base
  belongs_to :digital_contents
  belongs_to :subjects
end