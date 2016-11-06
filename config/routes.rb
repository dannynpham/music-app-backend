Rails.application.routes.draw do
  # mount_devise_token_auth_for 'User', at: 'auth'
  resources :playlists, only: :index do
    resources :tracks, only: :index do
      get 'album', to: 'albums#album'
      get 'artist', to: 'artists#artist'
    end
  end
  root 'home#index'
end
