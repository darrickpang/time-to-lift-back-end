class CreateConversations < ActiveRecord::Migration[6.0]
  def change
    create_table :conversations do |t|
      t.text :content
      t.timestamps
    end
  end
end
