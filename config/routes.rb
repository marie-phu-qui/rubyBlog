Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Route for the Root
  root 'posts#index'
  # Route for pages routes
  get 'about'=> 'pages#about'
  get 'contact'=> 'pages#contact'

  # 
  resources :posts

end
