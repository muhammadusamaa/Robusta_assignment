Rails.application.routes.draw do
  post '/rate' => 'rater#create', :as => 'rate'
  devise_for :users, :controllers => { :omniauth_callbacks => "omniauth_callbacks" }
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root 'movies#index'
resources :movies, only: [:index, :show]
resources :watchlists, only: [:index, :create]
get 'movies_search/:search', to: 'movies#search', as: :search_movies
end
