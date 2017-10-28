Rails.application.routes.draw do
  devise_for :users
  root 'home#top'
    
    
get '/posts/new' => 'posts#new'    
get '/posts/:id/edit' => 'posts#edit'    
post '/posts/create' => 'posts#create'    
post '/posts/:id/update' => 'posts#update'    
post '/posts/:id/destroy' => 'posts#destroy'    
get '/posts/:id' => 'posts#show' 

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
