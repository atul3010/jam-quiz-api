class Api::V1::ExamsController < ApplicationController
  def show
    exam = Exam.find(params[:id])
    send_success_response(exam)
  end

  def questions
    exam = Exam.find(params[:id])
    questions = exam.questions.paginate(params[:page], params[:page_limit])
    send_success_response(questions)
  end
end
