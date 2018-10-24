Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Route for the Root
  root 'posts#index', as: 'home'
  # Route for pages routes
  get 'about'=> 'pages#about', as: 'about'
  get 'contact'=> 'pages#contact', as: 'contact'

  # 
  resources :posts do
    resources :comments
  end
end
