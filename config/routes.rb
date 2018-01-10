Rails.application.routes.draw do
  resources :records
  devise_for :users
  root "closet#index"

  get '/calendar' => "closet#calendar"
  post 'enrollment' => 'closet#enrollment'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
