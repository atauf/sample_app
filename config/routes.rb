Rails.application.routes.draw do
  get 'users/new'

  root 'static_pages#home'

 # get 'static_pages/home'  #I guess this isn't needed if you have the root declared

  get '/help', to: 'static_pages#help'  #changed from 'static_pages/help' format to make path and url shorter

  get '/about', to: 'static_pages#about'

  get '/contact', to: 'static_pages#contact'

  get '/signup', to: 'users#new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #root 'application#hello'

end
