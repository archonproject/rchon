class SubjectSource < ActiveRecord::Base
  attr_accessible :ead_source, :subject_source
  has_many :subjects
end
