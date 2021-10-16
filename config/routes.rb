Rails.application.routes.draw do
  get 'static_pages/home'
  get 'static_pages/help'
  get 'static_pages/about'
  get 'static_pages/signup'
  get  '/signup',  to: 'users#new'
  get '/help', to: 'static_pages#help', as: 'helf'
  
  resources :microposts
  resources :users
  root 'static_pages#home'
end
