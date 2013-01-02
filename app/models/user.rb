 class User < ActiveRecord::Base
  attr_accessible :login, :email, :password_hash, :first_name, :last_name, :display_name, :is_admin_user, :register_time, :pending, :pending_hash, :user_group_id, :language_id, :country_id, :require_secure_connection, :profile_digit_content_id, :repository_limit, :locked
  belongs_to :language
  belongs_to :country
  has_many :user_repository_relationships, :dependent => :destroy
  has_many :repositories, :through => :user_repository_relationships
end