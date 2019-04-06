class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.integer :patient_id
      t.string :title
      t.text :description
      t.datetime :start_time
      t.datetime :end_time
      t.date :start_date
      t.date :end_date
      
      t.timestamps
    end
  end
end
