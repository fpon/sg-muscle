Rails.application.routes.draw do
  # patch '/trainings', to: 'trainings#update'

  resources :trainings, only: [:new, :create, :edit,:update, :destroy]
  resources :users
  root "home#index"
end
