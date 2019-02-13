class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.string :name
      t.integer :quote_id
      t.string :imageURL

      t.timestamps
    end
  end
end
