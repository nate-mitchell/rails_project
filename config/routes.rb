Rails.application.routes.draw do
  resources :evaluations
  get 'students/new'
  get 'sessions/new'
  root 'pages#front'
  get '/about',               to: 'pages#about'

  get '/student_login',       to: 'sessions#new'
  post '/student_login',      to: 'sessions#create'
  get '/admin_login',         to: 'sessions#admin_login'
  post '/admin_login',        to: 'sessions#admin_create'
  delete '/logout',           to: 'sessions#destroy'


  put '/students',            to: 'pages#admin_team_overview'

  get '/admin_team_overview',  to: 'pages#admin_team_overview'

  get '/student_signup',      to: 'students#new'

  #get '/student_home',        to: 'pages#student_home'
  #get '/student_projects',    to: 'pages#student_projects'
  get '/student_evaluations', to: 'pages#student_evaluations'
  get '/admin_login',         to: 'pages#admin_login'
  get '/admin_home',          to: 'pages#admin_home'
  #get '/admin_classes',       to: 'pages#admin_classes'
  #get '/admin_class_home',    to: 'pages#admin_class_home'
  #get '/admin_team_overview', to: 'pages#admin_team_overview'


  get '/student_evaluation',        to: 'students#evaluation'
  post '/student_evaluation',        to: 'evaluations#create'
  get '/admin_projects',         to: 'students#admin_projects'

  resources :evaluations
  resources :students
  resources :edit
  
end
