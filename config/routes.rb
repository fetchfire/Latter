Latter::Application.routes.draw do
  devise_for :players
  

  resources :games, :except => [:edit, :update] do
    post :complete, :on => :member
    resource :score, :controller => 'scores', :only => [:new, :create]
  end

  resources :activities, :controller => 'activity', :only => :index
  resources :statistics, :only => [:index]
  resources :players do
    resource :authentication_token, :only => [:show, :destroy]
  end

  resources :badges, :only => :index

  get "/player" => "players#current", :constraints => {:format => :json}

  root :to => 'players#index'
  get "/pages/*slug" => "pages#show", :as => 'page'

end
