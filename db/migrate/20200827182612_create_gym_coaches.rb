class CreateGymCoaches < ActiveRecord::Migration[6.0]
  def change
    create_table :gym_coaches do |t|
      t.integer :gym_id
      t.integer :coach_id

      t.timestamps
    end
  end
end
