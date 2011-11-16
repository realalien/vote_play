class CreateOrganizationPeople < ActiveRecord::Migration
  def change
    create_table :organization_people do |t|
      t.string :role
      t.date :inaugurated_on
      t.date :ceased_on
      t.integer :organization_id
      t.integer :person_id

      t.timestamps
    end
  end
end
