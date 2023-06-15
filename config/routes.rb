Rails.application.routes.draw do
 
 get '/blogs/new' => 'blog#new', as: 'new_blog'
 get '/blogs/:id' => 'blog#show', as: 'blog'
 get '/blogs' => 'blog#index', as: 'blogs'
 post '/blogs' => 'blog#create'
 root 'blog#index'
end
