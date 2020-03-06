Rails.application.routes.draw do
  root 'static_pages#home'
  get '/home', to: 'static_pages#home'
  get '/resources', to: 'static_pages#resources'
  get '/contact', to: 'static_pages#contact'
  
  get '/fr_home', to: 'static_pages#fr_home'
  get '/fr_resources', to: 'static_pages#fr_resources'
  get '/fr_contact', to: 'static_pages#fr_contact'

  get '/sp_home', to: 'static_pages#sp_home'
  get '/sp_resources', to: 'static_pages#sp_resources'
  get '/sp_contact', to: 'static_pages#sp_contact'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
