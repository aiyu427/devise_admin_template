DeviseAdminTemplate::Application.routes.draw do
  root  'static_pages#home'
  match '/help',    to: 'static_pages#help',    via: 'get'
  match '/about',   to: 'static_pages#about',   via: 'get'
  match '/contact', to: 'static_pages#contact', via: 'get'
  match '/town',    to: 'town#index',             via: 'get'

  mount RailsAdmin::Engine => '/app_admin', as: 'rails_admin'
  devise_for :admins, :controllers => { 
    :sessions => "admins/sessions"
  }

  devise_for :users, :controllers => { 
    :sessions => "users/sessions",
    :registrations => "users/registrations",
    :confirmations => "users/confirmations",
    :passwords => "users/passwords" 
  }
  devise_scope :user do
    patch "/users/confirm" => "users/confirmations#confirm"
  end

  # kaminari用　今はまだよくわからん http://morizyun.github.io/blog/kaminari-gem-paginator-rails/
  resources :my_resources do
    get 'page/:page', :action => :index, :on => :collection
  end

  resource :user_infos, only: [:edit, :update]
end
