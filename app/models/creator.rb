class Creator < ActiveRecord::Base
  attr_accessible :biog_hist, :biog_hist_author, :creator_source_id, :creator_type_id, :dates, :identifier, :language_id, :lcnaf_compliant, :lcnaf_dates, :name, :name_fuller_Form, :name_variants, :respository_id, :script_id, :sources
  has_many :classifications
end
