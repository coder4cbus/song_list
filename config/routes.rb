Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root 'songs#list'

    get 'songs/list' => 'songs#list', as: :song_list
    get 'songs/new' => 'songs#new', as: :new_song
    post 'songs/create' => 'songs#create', as: :songs
    get 'songs/edit/:id' => 'songs#edit', as: :edit_song
    post 'songs/update/:id' => 'songs#update', as: :song
    delete 'songs/destroy/:id' => 'songs#destroy', as: :delete_song

    # get 'artists/list' => 'artists#list', as: :artist_list
    # get 'artists/new' => 'artists#new', as: :new_artist
    # post 'artists/create' => 'artists#create', as: :artists
    # get 'artists/edit/:id' => 'artists#edit', as: :edit_artist
    # post 'artists/update/:id' => 'artists#update', as: :artist
    # delete 'artists/destroy/:id' => 'artists#destroy', as: :delete_artist

  resources :artists
end
