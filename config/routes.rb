Rails.application.routes.draw do
  get 'recipes/index'
  get 'foods/index'
  get 'public/main'
  resources :dogs


  resources :recipes

  
  resources :foods



  get 'dogs/index'
  root to: 'public#main'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
