class CreateClassLists < ActiveRecord::Migration[6.0]
  def change
    create_table :class_lists do |t|
      t.integer :class_session_id
      t.integer :student_id

      t.timestamps
    end
  end
end
