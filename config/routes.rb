Rails.application.routes.draw do
  #get 'static_pages/index'
  root 'static_pages#index'
  resources :restaurants
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
