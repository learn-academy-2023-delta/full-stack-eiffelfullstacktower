Rails.application.routes.draw do
 
 get '/blogs/new' => 'blog#new', as: 'new_blog'
 get '/blogs/:id' => 'blog#show', as: 'blog'
 get '/blogs/:id/edit' => 'blog#edit', as: 'edit_blog'
 get '/blogs' => 'blog#index', as: 'blogs'
 patch '/blogs/:id' => 'blog#update'
 post '/blogs' => 'blog#create'
 delete '/blogs/:id' => 'blog#delete', as: 'delete_blog'
 root 'blog#index'
end
