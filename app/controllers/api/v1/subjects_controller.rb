class Api::V1::SubjectsController < ApplicationController
  def index
    subjects = Subject.where(grade: current_user.grade)
    send_success_response(subjects)
  end

  def show
    subject = Subject.find(params[:id])
    send_success_response(subject)
  end

  def exams
    subject = Subject.find(params[:id])
    exams = subject.exams
    send_success_response(exams)
  end
end
