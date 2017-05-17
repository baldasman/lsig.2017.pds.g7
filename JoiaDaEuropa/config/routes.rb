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


  get '/order/index'
  get '/order/new'
  get '/order/view/:id', to: 'order#view', as: 'order_view'
  get '/order/edit/:id', to: 'order#edit', as: 'order_edit'
  post '/order/save'

  root to: 'home#index'
end
