Rails.application.routes.draw do
  resources :posts
  get 'home/index'
  root "home#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  post "home/group_message", to: "home#group_message"
  post "home/say_hello" => "home#say_hello"
end
