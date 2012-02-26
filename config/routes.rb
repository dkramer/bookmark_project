BookmarkProject::Application.routes.draw do
  #get "bookmark/new"

  #get "bookmark/create"

  #get "bookmark/index"

  resources :bookmarks

  root :to => "bookmarks#new"

end
