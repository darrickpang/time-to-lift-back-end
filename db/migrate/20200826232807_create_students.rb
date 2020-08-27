class CreateStudents < ActiveRecord::Migration[6.0]
  def change
    create_table :students do |t|
      t.string :name
      t.string :password
      t.string :location
      t.integer :age

      t.timestamps
    end
  end
end
