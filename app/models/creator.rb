class Creator < ActiveRecord::Base
  attr_accessible :biog_hist, :biog_hist_author, :creator_source_id, :creator_type_id, :dates, :identifier, :language_id, :lcnaf_compliant, :lcnaf_dates, :name, :name_fuller_Form, :name_variants, :respository_id, :script_id, :sources
  belongs_to :repository
  has_many :classifications
  has_many :collection_creator_relationships ,:dependent => :destroy
  has_many :creator_book_relationships ,:dependent => :destroy
  has_many :creator_relationships
  has_many :creator_accession_relationships, :dependent => :destroy
  has_many :digital_content_creator_relationships ,:dependent => :destroy
  has_many :collection_content_creator_relationships, :dependent => :destroy
  has_many :collections , :through => :collection_creator_relationships 
  has_many :books , :through => :creator_book_relationships
  has_many :digitalContents , :through => :digital_content_creator_relationships
  has_many :accessions, :through => :creator_accession_relationships
  has_many :collection_contents, :through => :collection_content_creator_relationships
end
