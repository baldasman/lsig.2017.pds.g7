class HomeController < ApplicationController

  skip_before_action  :authenticate_user!

  def index

      @today = Time.now

      @users = User.all

  end




end