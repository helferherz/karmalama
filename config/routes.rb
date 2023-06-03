Rails.application.routes.draw do

  Rails.application.routes.draw do
    devise_for :users, controllers: { registrations: 'registrations' }


  end

  root to: "pages#home"
  get '/my_bookings', to: 'bookings#my_bookings'
  get '/profile', to: 'pages#profile'
  patch '/profile', to: 'pages#update_profile'
  get '/my_assignments', to: 'pages#my_assignments'





  resources :listings do
    resources :bookings do
      member do
        patch '/confirm', to: 'bookings#confirm'
        patch '/reject', to: 'bookings#reject'
      end
    end
  end
end
