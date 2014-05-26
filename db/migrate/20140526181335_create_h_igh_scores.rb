class CreateHIghScores < ActiveRecord::Migration
  def change
    create_table :h_igh_scores do |t|
      t.string :game
      t.integer :score

      t.timestamps
    end
  end
end
