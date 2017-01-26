class ApplicationController < ActionController::Base
  protect_from_forgery prepend: true, with: :exception
  http_basic_authenticate_with name: "decathlon", password: "adygeya"
end