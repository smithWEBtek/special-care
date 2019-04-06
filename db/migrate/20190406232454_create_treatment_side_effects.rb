class CreateTreatmentSideEffects < ActiveRecord::Migration[5.2]
  def change
    create_table :treatment_side_effects do |t|

      t.timestamps
    end
  end
end
