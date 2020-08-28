Rails.application.routes.draw do
  resources :gym_coaches
  resources :coach_students
  resources :class_lists
  resources :gyms
  resources :class_sessions
  resources :students
  resources :coaches
  
  post '/student_login', to: 'students#login'
  get '/student_persist', to: 'students#persist'

  post '/coach_login', to: 'coaches#login'
  get '/coach_persist', to: 'coaches#persist'
end
