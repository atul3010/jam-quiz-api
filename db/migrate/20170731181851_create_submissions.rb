class CreateSubmissions < ActiveRecord::Migration[5.0]
  def change
    create_table :submissions do |t|
      t.references :user, foreign_key: true
      t.string :answers
      t.integer :score

      t.timestamps
    end
  end
end
