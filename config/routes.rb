Rails.application.routes.draw do
  
  root 'topics#index'

  devise_for :users
  resources :topics do
    member do
    # collection do
      post 'upvote'
      post 'downvote'
    end
  end
 
  get 'about' => 'static#about', as: :about    

  require 'sidekiq/web'
  mount Sidekiq::Web => '/jobs'

end
