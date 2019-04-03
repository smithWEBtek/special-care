class CreatePatients < ActiveRecord::Migration[5.2]
  def change
    create_table :patients do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.date :birthdate
      t.string :phone1
      t.string :phone2
      t.string :email
      t.string :bio
      t.string :triggers
      t.text :preferences
      t.text :diagnosis
      t.string :url
      t.string :address_number
      t.string :address_extension
      t.string :address_line2
      t.string :address_street
      t.string :address_city
      t.string :address_state
      t.string :address_zip
  
      t.timestamps
    end
  end
end
