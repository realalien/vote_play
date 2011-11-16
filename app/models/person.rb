class Person < ActiveRecord::Base
  has_many :organization_persons
  has_many :organizations, :through => :organization_persons
end
