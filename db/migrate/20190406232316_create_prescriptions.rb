class CreatePrescriptions < ActiveRecord::Migration[5.2]
  def change
    create_table :prescriptions do |t|
      t.text :description
      t.integer :doctor_id
      t.integer :medication_id
      t.date  :start_date
      t.date :end_date
      t.integer :doseage_amount
      t.datetime :doseage_time
      
      t.timestamps
    end
  end
end
