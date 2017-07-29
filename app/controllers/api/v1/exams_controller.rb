class Api::V1::ExamsController < ApplicationController
  def index
    exams = Exam.where(subject_id: params[:subject_id])
    send_success_response(exams)
  end
end
