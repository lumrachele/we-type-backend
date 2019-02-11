class CreateScores < ActiveRecord::Migration[5.2]
  def change
    create_table :scores do |t|
      t.integer :game_id
      t.integer :score
      t.string :username, :default=> ""
    end
  end
end
