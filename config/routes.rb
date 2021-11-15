Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  scope '/api' do
    resources :lists, except: [:new, :edit]
    resources :list_items, only: [:create, :update, :destroy]
  end

  get '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#logout'
  get '/signup', to: 'registrations#create'
end
