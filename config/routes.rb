Rails.application.routes.draw do
  root 'messages#index'
  get '/messages/', to: 'messages#index'
end
