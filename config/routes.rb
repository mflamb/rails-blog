Rails.application.routes.draw do
  get 'sessions/new'
  get 'posts' => 'posts#index'
  get 'posts/show' => 'posts#show'
  resources :posts
  resources :comments
  resources :users do
    resources :posts
  end

get '/login' => 'sessions#new'
post '/login' => 'sessions#create'
delete '/logout' => 'sessions#destroy'
get '/signup' => 'users#new'
get '/' => 'users#index'

  root 'users#index'
end
