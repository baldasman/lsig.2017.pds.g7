class ProfileController < ApplicationController

  def index

    @user = current_user

  end

  def edit

    @user_profile = UserProfile.find_or_initialize_by(user_id: params[:id])


  end


  def save_user_profile


    @user_profile = current_user.user_profile
    @user_profile.name = params[:user_profile][:name]
    @user_profile.gender = params[:user_profile][:gender]
    @user_profile.age = params[:user_profile][:age]
    @user_profile.address = params[:user_profile][:address]
    @user_profile.vat = params[:user_profile][:vat]
    @user_profile.tel_number = params[:user_profile][:tel_number]

    if @user_profile.save
      redirect_to profile_index_path
    else
      flash[:error] = @user_profile.errors.messages

      redirect_to profile_edit_path

    end

  end


end