class Organization < ActiveRecord::Base
  has_many :organization_persons
  has_many :people, :through => :organization_persons
end
