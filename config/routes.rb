Rails.application.routes.draw do
  resources :class_lists
  resources :gyms
  resources :class_sessions
  resources :students
  resources :coaches
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
