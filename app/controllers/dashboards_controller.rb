class DashboardsController < ApplicationController
  before_filter :authenticate_user!
  
  def index
    # @dashboards = Dashboard.all
  end
end
