class CreateGoals < ActiveRecord::Migration[5.2]
  def change
    create_table :goals do |t|
      t.integer :patient_id
      t.string :title
      t.text :description
      t.date :target_date
      t.string :status
      t.integer :category
      
      t.timestamps
    end
  end
end
