Rails.application.routes.draw do
  post '/edit', to: 'edit#edit'
  get '/edit', to: 'edit#edit'; get '/EDIT', to: 'edit#edit'
  post '/generated', to: 'generated#preview'
  get '/generated', to: 'generated#preview'; get '/GENERATED', to: 'generated#preview'
  #get '/', to: 'startpage#index'
  root 'startpage#index'
end
