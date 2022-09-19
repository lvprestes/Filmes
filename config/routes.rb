Rails.application.routes.draw do
  resources :homes
  devise_for :users
  resources :filmes do
    resources :reviews
  end
  root "homes#index"
end
