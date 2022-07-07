Rails.application.routes.draw do
  root 'components#index'
  # get 'components/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  
  namespace :api do
    resources :lanes, only: %i[index create destroy]
    # post 'lanes', to: 'lanes#index'
  end
end
