Rails.application.routes.draw do
  get 'billable/index'
  get 'billable/show'
  get 'billable/create'
  get 'billable/new'
  resources :projects
  devise_for :users
  get 'home/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "home#index"

  namespace :api, defaults: { format: :json } do
  	namespace :v1 do
  		resources :projects
      devise_for :users, controllers: {
        sessions: 'api/v1/sessions',
        registrations: 'api/v1/registrations'
      }
  	end	
  end	
end
