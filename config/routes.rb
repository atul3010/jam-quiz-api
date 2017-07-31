Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
    namespace :api do
      namespace :v1 do
      	post 'users', to: 'users#create'
        post 'sign_in', to: 'users#sign_in'

        get 'user_subjects', to: 'subjects#index'
        get 'subjects/:id', to: 'subjects#show'
        get 'subjects/:id/exams', to: 'subjects#exams'

        get 'exams/:id', to: 'exams#show'
        get 'exams/:id/questions', to: 'exams#questions'
        post 'exams/:id/questions/:question_id/submit', to: 'submissions#submit_answer'
      end
    end
end
