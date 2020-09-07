Rails.application.routes.draw do
  resources :student_dates
  # resources :gym_coaches
  # resources :coach_students
  resources :class_lists, only: [:index, :show, :create, :edit, :update]
  resources :gyms, only: [:index, :show, :create, :edit, :update]
  resources :class_sessions
  resources :students, only: [:show, :create, :edit, :update, :destroy]
  resources :coaches, only: [:show, :create, :edit, :update, :destroy]
  
  post '/student_login', to: 'students#login'
  get '/student_persist', to: 'students#persist'

  post '/coach_login', to: 'coaches#login'
  get '/coach_persist', to: 'coaches#persist'
end
