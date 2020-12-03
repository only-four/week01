Rails.application.routes.draw do
  root 'notebook#index'
  resources :notebook
end
