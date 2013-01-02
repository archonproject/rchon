class ProcessingPriority < ActiveRecord::Base
  attr_accessible :description, :processing_priority, :sort_order
  has_many :accessions
end
