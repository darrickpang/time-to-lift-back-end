class CreateClassSessions < ActiveRecord::Migration[6.0]
  def change
    create_table :class_sessions do |t|
      t.string :name
      t.string :time
      t.string :date 
      t.string :duration
      t.integer :coach_id
      t.integer :gym_id
      t.timestamps
    end
  end
end
