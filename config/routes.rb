Rails.application.routes.draw do
  get 'static_pages/sp-home'

  get 'static_pages/fr-home'

  get 'static_pages/sp-resources'

  get 'static_pages/fr-resources'

  get 'static_pages/sp-contact'

  get 'static_pages/fr-contact'

  root 'static_pages#home'
  get '/home', to: 'static_pages#home'
  get '/resources', to: 'static_pages#resources'
  get '/contact', to: 'static_pages#contact'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
