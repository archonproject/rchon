class Book < ActiveRecord::Base
  attr_accessible :copy_edition, :description, :edition, :notes, :number_of_pages, :place_of_publication, :publication_date, :publisher, :series, :title
  belongs_to :collection
  has_many :creatorBookRelationships ,:dependent => :destroy
  has_many :creators , :through =>  :creatorBookRelationships
end
