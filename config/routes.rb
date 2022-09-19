Rails.application.routes.draw do
  devise_for :users
  resources :filmes do
    resources :reviews
  end
  root "filmes#index"
end
