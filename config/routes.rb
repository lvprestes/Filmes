Rails.application.routes.draw do
  devise_for :users
  resources :filmes
  root "filmes#index"
end
