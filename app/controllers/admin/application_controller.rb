
class Admin::ApplicationController < ActionController::Base
  http_basic_authenticate_with name: "admin", password: "supersecretpassword"

  layout "admin/application"
end