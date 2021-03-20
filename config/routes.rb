Rails.application.routes.draw do
  get 'users/new'
  resources :subjects
  resources :courses
  resources :instructors
  resources :users

  get '/courses', to: 'courses#show'
  get '/subjects', to: 'subjects#show'
  get '/instructors', to: 'instructors#show'

  get '/signup', to: 'users#new'


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root "welcome#index"
end
