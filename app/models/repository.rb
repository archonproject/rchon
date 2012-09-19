class Repository < ActiveRecord::Base
  attr_accessible :address, :address2, :administrator, :city, :code, :country, :email, :email_signature, :fax, :name, :phone, :phone_ext, :research_functionality, :state, :url, :zip
end
