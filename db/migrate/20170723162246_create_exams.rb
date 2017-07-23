class CreateExams < ActiveRecord::Migration[5.0]
  def change
    create_table :exams do |t|
      t.references :subject, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end
