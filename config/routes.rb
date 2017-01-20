Rails.application.routes.draw do
  post '/edit', to: 'edit#index'
  get '/edit', to: 'edit#index'
  post '/generated', to: 'edit#generate'
  get '/generated', to: 'edit#generate'
  #post '/generated', to: 'generated#preview'
  #get '/generated', to: 'generated#preview'
  root 'startpage#index'
end
