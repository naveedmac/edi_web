Rails.application.routes.draw do
  
  resources :companies do 
    resources :clients
  end
  get '/',to:'welcome#home', as: :root
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
