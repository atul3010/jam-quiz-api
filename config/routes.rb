Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
    namespace :api do
      namespace :v1 do
      	post 'users', to: 'users#create'
      end
    end
end
