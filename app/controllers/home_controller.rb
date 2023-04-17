class HomeController < ApplicationController
  def index
    @users = user.all
  end
end
