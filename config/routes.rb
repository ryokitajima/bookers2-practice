Rails.application.routes.draw do
  devise_for :books
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/" => "homes#top"
  get "home/about" => "homes#about"
  get "/users" => "users#index"
  get "/books" => "books#index"
  
  root to: "homes#top"
  
end

