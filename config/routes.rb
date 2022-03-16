Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #
  #resources :weather

  get 'weather', to: 'weather#index'
  get 'weather/:id', to: 'weather#show'
  post 'weather', to: 'weather#create'
end
