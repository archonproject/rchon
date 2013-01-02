class DigitalContentLanguageRelationship < ActiveRecord::Base
  belongs_to :digital_contents
  belongs_to :languages
end