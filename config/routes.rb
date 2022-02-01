Rails.application.routes.draw do
  resources :dogs


  resources :recipes do
    resource :comments
  end


  resources :foods


  get 'recipes/index'
  get 'foods/index'
  get 'public/main'
  get 'dogs/index'
  root to: 'public#main'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
