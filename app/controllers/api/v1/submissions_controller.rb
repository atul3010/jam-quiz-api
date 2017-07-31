class Api::V1::SubmissionsController < ApplicationController
  def submit_answer
    submission = current_user.submissions.find_or_create_by(exam_id: params[:id])
    answers = submission.answers || {}
    answers[params[:question_id]] = params[:answer]
    submission.update_attributes(answers: answers)
    send_success_response(true)
  end
end
