Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  devise_for :users
  devise_scope :user do  
    get '/users/sign_out' => 'devise/sessions#destroy'
  end     

  resources :docs
  authenticated :user do
    root "docs#index", as: "logged_root"
  end

  root "welcome#index"

end
