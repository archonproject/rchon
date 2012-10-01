class DigitalContentFile < ActiveRecord::Base
  attr_accessible :default_access_level, :digital_content_id, :display_order, :title
  belongs_to :digital_content
end
