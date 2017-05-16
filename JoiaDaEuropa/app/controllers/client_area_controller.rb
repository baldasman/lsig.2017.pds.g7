class ClientAreaController < ApplicationController

  before_action :check_user_profile

  def index

    @user_profile = current_user.user_profile

  end

  def edit_user_profile

    @user_profile = current_user.user_profile


  end


  def save_user_profile


    @user_profile = current_user.user_profile
    @user_profile.name = params[:user_profile][:name]

    if @user_profile.save
      redirect_to client_area_index_path
    else
        flash[:error] = @user_profile.errors.messages

        redirect_to client_area_edit_user_profile_path

    end

  end

  private

  def check_user_profile

    @user_profile = UserProfile.find_by(user_id: current_user.id)

    if @user_profile.nil?
      current_user.user_profile = UserProfile.new name: current_user.email
      current_user.save
    end


  end


end