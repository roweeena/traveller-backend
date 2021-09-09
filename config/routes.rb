Rails.application.routes.draw do

resources :users, only: [ :create, :create_user, :show, :index]
resources :trips
resources :expenses
resources :checklists

post '/login' => "sessions#create"
delete '/logout' => 'sessions#destroy'
get '/logged_in' => 'sessions#is_logged_in?'

post '/register' => "users#create_user"
end
