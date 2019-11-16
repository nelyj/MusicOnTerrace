Rails.application.routes.draw do
  root 'spotify#index'
  get 'spotify/session', to: 'spotify#sessions'
  post 'spotify/redirect', to: 'spotify#redirect'
  get 'spotify/redirect', to: 'spotify#redirect'
end
