class ProfileController < ApplicationController

  def index

    @user = current_user

  end

  def edit

    @user_profile = current_user.user_profile


  end


  def save_user_profile


    @user_profile = current_user.user_profile
    @user_profile.name = params[:user_profile][:name]

    if @user_profile.save
      redirect_to profile_index_path
    else
      flash[:error] = @user_profile.errors.messages

      redirect_to profile_edit_path

    end

  end


end