Rails.application.routes.draw do
  get 'contacts/new'

  get 'contact/new'

  get 'community_resources/new'

  root 'static_pages#home'
  get '/home', to: 'static_pages#home'
  get '/resources', to: 'static_pages#resources'
  get '/contact', to: 'contacts#new'
  get '/sent', to: 'contacts#create'
  get '/volunteer', to: 'static_pages#volunteer'
  
  get '/fr_home', to: 'static_pages#fr_home'
  get '/fr_resources', to: 'static_pages#fr_resources'
  get '/fr_contact', to: 'static_pages#fr_contact'
  get '/fr_volunteer', to: 'static_pages#fr_volunteer'

  get '/sp_home', to: 'static_pages#sp_home'
  get '/sp_resources', to: 'static_pages#sp_resources'
  get '/sp_contact', to: 'static_pages#sp_contact'
  get '/sp_volunteer', to: 'static_pages#sp_volunteer'
  

  resources :contacts, only: [:new, :create]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
