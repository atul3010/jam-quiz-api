class AddExamAssociationInSubmission < ActiveRecord::Migration[5.0]
  def change
    add_column :submissions, :exam_id, :integer
  end
end
