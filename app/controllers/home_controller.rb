class HomeController < ApplicationController
  before_action :confirm_user_signed_in?
  def index 
  end

  def show
  end
end
