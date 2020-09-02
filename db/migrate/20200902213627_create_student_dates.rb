class CreateStudentDates < ActiveRecord::Migration[6.0]
  def change
    create_table :student_dates do |t|
      t.integer :student_id
      t.string :date
      t.string :class_name
      t.timestamps
    end
  end
end
