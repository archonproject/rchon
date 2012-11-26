 class User < ActiveRecord::Base
  belongs_to :language
  belongs_to :country
  has_many :user_repository_relationships, :dependent => :destroy
  has_many :repositories, :through => :user_repository_relationships
end