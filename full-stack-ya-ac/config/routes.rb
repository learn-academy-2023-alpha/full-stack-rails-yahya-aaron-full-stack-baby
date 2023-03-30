Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'blog#index'
  get '/blogs' => 'blog#index', as: 'blogs'
  get '/blogs/new' => 'blog#new', as: 'new'
  get '/blogs/:id' => 'blog#show', as: 'blog'
  get '/blogs/:id/edit' => 'blog#edit', as: 'edit'
  post '/blogs' => 'blog#create'
  patch '/blogs/:id' => 'blog#update', as: 'update'
  delete '/blogs/:id' => 'blog#destroy', as: 'delete_post'
end
