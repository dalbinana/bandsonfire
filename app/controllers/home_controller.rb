class HomeController < ApplicationController
  before_action :authenticate_user!, only: :index

  def index
  	@user_name=current_user.email
  end

end