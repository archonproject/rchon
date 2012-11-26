 class FileType < ActiveRecord::Base
  belongs_to :media_type
  has_many :file_types
end