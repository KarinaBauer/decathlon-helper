Rails.application.routes.draw do
  post '/edit', to: 'edit#edit'
  get '/edit', to: 'edit#edit'
  post '/generated', to: 'edit#generate'
  get '/generated', to: 'edit#generate'
  #post '/generated', to: 'generated#preview'
  #get '/generated', to: 'generated#preview'
  root 'startpage#index'
end
