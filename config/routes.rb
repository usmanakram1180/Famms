Rails.application.routes.draw do
  devise_for :users
  get 'carts/:id' => "carts#show", as: "cart"
delete 'carts/:id' => "carts#destroy"

post 'line_items/:id/add' => "line_items#add_quantity", as: "line_item_add"
post 'line_items/:id/reduce' => "line_items#reduce_quantity", as: "line_item_reduce"
post 'line_items' => "line_items#create"
get 'line_items/:id' => "line_items#show", as: "line_item"
delete 'line_items/:id' => "line_items#destroy"

resources :pros
resources :orders
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
get '/home', to: "homes#index"
get '/about', to: "abouts#index"
get '/testimonial', to: "testimonials#index"
get '/product', to: "products#index"
get '/blog', to: "blogs#index"
get '/contact', to: "contacts#index"
post '/subscribe', to: 'homes#create'
  resources :homes
  resources :abouts
  resources :testimonials
  resources :products
  resources :blogs
  resources :contacts
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  root "homes#index"
end
