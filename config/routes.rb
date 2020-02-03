Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/showsearch/:query' => 'show#search'
  resources :shows do
    resources :quotes
  end
end
