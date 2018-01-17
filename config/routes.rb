Rails.application.routes.draw do
  # 홈페이지 메인
  root "closet#index"
  
  # calendar / modal 페이지 관련
  get '/calendar' => "closet#calendar"
  
  # Record scaffold route
  resources :records, :except => [:show, :index, :new]
  
  # users 관련 REST api
  devise_for :users
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
