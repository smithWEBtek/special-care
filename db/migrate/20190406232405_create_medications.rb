class CreateMedications < ActiveRecord::Migration[5.2]
  def change
    create_table :medications do |t|
      t.string :name
      t.text :description
      t.string :url
 
      t.timestamps
    end
  end
end
