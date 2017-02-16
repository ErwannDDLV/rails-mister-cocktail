Rails.application.routes.draw do
  root
  resources :cocktails, only: [:index, :show, :new]
end
