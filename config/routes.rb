Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
    namespace :api do
      namespace :v1 do
      	post 'users', to: 'users#create'
        post 'sign_in', to: 'users#sign_in'
        get 'exams', to: 'exams#index'
        get 'subjects', to: 'subjects#index'
      end
    end
end
