Rails.application.routes.draw do
  resources :filmes

  root "filmes#index"
end
