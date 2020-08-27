class CreateGyms < ActiveRecord::Migration[6.0]
  def change
    create_table :gyms do |t|
      t.string :address
      t.string :city
      t.integer :zip_code
      t.timestamps
    end
  end
end
