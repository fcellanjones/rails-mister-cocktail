Rails.application.routes.draw do
  get 'cocktails/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'cocktail#index'
  resources :cocktails, only: [ :index ]
end
