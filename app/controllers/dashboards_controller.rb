class DashboardsController < ApplicationController
    before_action :authenticate_admin!
  
    def show
      @oauth_uid = session[:oauth_uid]  # Get the OAuth UID from the session
      @admin = current_admin
    end
  end
  