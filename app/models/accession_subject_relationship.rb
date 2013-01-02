 class AccessionSubjectRelationship < ActiveRecord::Base
  belongs_to :accession
  belongs_to :subject
end