class Person < ActiveRecord::Base
  has_many :organization_persons
  has_many :organizations, :through => :organization_persons
  
  accepts_nested_attributes_for :organization_persons
end
