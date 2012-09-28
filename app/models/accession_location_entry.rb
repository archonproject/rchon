class AccessionLocationEntry < ActiveRecord::Base
  attr_accessible :accession_id, :content, :extent, :extent_unit_id, :location_id, :range_value, :section, :shelf
  has_one :location
  has_one :accession
  validates_presence_of :location
  validates_presence_of :accession
  end
