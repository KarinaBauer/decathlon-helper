Rails.application.routes.draw do
  post '/edit', to: 'balisage#edit'
  get '/edit', to: 'balisage#edit'
  post '/generated', to: 'balisage#generate'
  get '/generated', to: 'balisage#generate'
  #post '/generated', to: 'generated#preview'
  #get '/generated', to: 'generated#preview'
  root 'start#index'
end
