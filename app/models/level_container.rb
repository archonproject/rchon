class LevelContainer < ActiveRecord::Base
  attr_accessible :ead_level, :global_numbering, :intellectual_level, :name, :physical_container, :primary_ead_level
end
