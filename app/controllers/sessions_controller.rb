class SessionsController < ApplicationController
  skip_before_action :ensure_current_user
  
end