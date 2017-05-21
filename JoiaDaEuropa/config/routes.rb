Rails.application.routes.draw do

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html



  get 'home/aboutus'
  get 'home/mission'
  get 'home/contacts'
  get 'home/news'
  get 'home/partnerships'


  get '/profile/index'

  get '/profile/edit/:id', to: 'profile#edit', as: 'profile_edit'
  post '/profile/save_user_profile'

  get '/client_area/index'

  get '/backoffice/index'
  get '/backoffice/approved'
  get '/backoffice/cancelled'
  get '/backoffice/concluded'
  get '/backoffice/pending'
  get '/backoffice/view/:id', to: 'backoffice#view', as: 'backoffice_view'

  post '/backoffice/approve_order'
  post '/backoffice/complete_order'
  post '/backoffice/cancel_order'


  get '/order/index'
  get '/order/new'
  get '/order/pending'
  get '/order/concluded'
  get '/order/cancelled'
  get '/order/approved'
  get '/order/view/:id', to: 'order#view', as: 'order_view'
  get '/order/edit/:id', to: 'order#edit', as: 'order_edit'
  post '/order/save'

  root to: 'home#index'
end
