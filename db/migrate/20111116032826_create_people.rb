class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name
      t.boolean :is_male
      t.date :birthday
      t.text :bio
      t.string :family_origin

      t.timestamps
    end
  end
end
