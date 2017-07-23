class CreateSchools < ActiveRecord::Migration[5.0]
  def change
    create_table :schools do |t|
      t.references :user, foreign_key: true
      t.text :name
      t.integer :from_year
      t.integer :to_year
      t.timestamps
    end
  end
end
