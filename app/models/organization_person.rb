class OrganizationPerson < ActiveRecord::Base
  belongs_to :organization
  belongs_to :person
  
  # NOTE: the :update_only option issue, check this link 
  # http://masonoise.wordpress.com/2010/07/23/rails-and-forms-using-accepts_nested_attributes_for/ 
  accepts_nested_attributes_for :organization, :update_only => true
end
