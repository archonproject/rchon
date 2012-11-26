class Repository < ActiveRecord::Base
  attr_accessible :address, :address2, :administrator, :city, :code, :country, :email, :email_signature, :fax, :name, :phone, :phone_ext, :research_functionality, :state, :url, :zip
  belongs_to :country
  has_many :collections
  has_many :creators
  has_many :location_repository_relationships, :dependent => :destroy
  has_many :user_repository_relationships, :dependent => :destroy
  has_many :users, :through => :user_repository_relationships
  has_many :locations, :through => :location_repository_relationships
end
