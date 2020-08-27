class CreateCoaches < ActiveRecord::Migration[6.0]
  def change
    create_table :coaches do |t|
      t.string :name
      t.string :password_digest
      t.string :location
      t.integer :age

      t.timestamps
    end
  end
end
