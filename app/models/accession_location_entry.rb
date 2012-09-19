class AccessionLocationEntry < ActiveRecord::Base
  attr_accessible :accession_id, :content, :extent, :extent_unit_id, :location_id, :range_value, :section, :shelf
end
