class CreateMedicationSideEffects < ActiveRecord::Migration[5.2]
  def change
    create_table :medication_side_effects do |t|
      t.integer :medication_id
      t.integer :side_effect_id
      t.timestamps
    end
  end
end
