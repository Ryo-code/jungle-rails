class Admin::DashboardController < ApplicationController
  http_basic_authenticate_with ENV['name'], ENV['password']

  def show
  end
end
