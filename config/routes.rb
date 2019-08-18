Rails.application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  resources :schedule_bookeds
  resources :schedules
  root 'dashboards#index'
  resources :dashboards, only: [:index]
  resources :doctors do
    resources :show_schedules, only: [:index], to: 'doctors#show_schedules'
  end
  resources :specialists
  resources :hospitals
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
