class CreateScores < ActiveRecord::Migration[5.0]
  def change
    create_table :scores do |t|
      t.references :user, foreign_key: true
      t.references :exam, foreign_key: true
      t.integer :value

      t.timestamps
    end
  end
end
