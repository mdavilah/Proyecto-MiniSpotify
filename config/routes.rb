Rails.application.routes.draw do
  



  resources :songs do
  	member do
  		post 'add_song' => 'songs#add_song'
  		delete 'remove_song' => 'songs#remove_song'
  	end

  end
  devise_for :users, controllers: {
  	registrations: 'users/registrations',
    omniauth_callbacks: "users/omniauth_callbacks"
  }
   resources :users, only: [:show, :index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root  'songs#index'



end
