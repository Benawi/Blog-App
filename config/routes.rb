Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :users
  root 'users#index'
  # Defines the root path route ("/")
  # root "articles#index"
  
  resources :users, only: [:index, :show] do
    resources :posts, only: [:index, :show]
  end

  # a route that maps the URL "/posts" to the "create" action of the "posts"
  # controller. This means that when a user submits a POST request to the "/posts"
  # URL, the "create" action in the "posts" controller will be executed.
  post "/posts", to: "posts#create"

 # a route that maps the URL "/posts/:id/comments" to the "create_comment"
 # action of the "posts" controller.
  post "/posts/:id/comments", to: "comments#create", as: :post_comments

 # a route that maps the URL "/posts/:id/likes" to the "create_like"
 # action of the "posts" controller.
  post "/posts/:id/likes", to: "likes#create", as: :post_likes

  # route that maps the URL "/users/:author_id/posts" to the "create" action of the "posts"
  # controller.
  post "/users/:author_id/posts", to: "posts#create", as: :create_user_post
end
