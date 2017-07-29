class Api::V1::SubjectsController < ApplicationController
  def index
    subjects = Subject.where(grade: current_user.grade)
    send_success_response(subjects)
  end
end
