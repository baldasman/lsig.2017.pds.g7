class HomeController < ApplicationController

  skip_before_action  :authenticate_user!

  def index

      @today = Time.now

      @users = User.all

  end

  def aboutus

      @today = Time.now

      @users = User.all

  end

  def mission

    @today = Time.now

    @users = User.all

  end

  def contacts

    @today = Time.now

    @users = User.all

  end

  def news

    @today = Time.now

    @users = User.all

  end

  def externallinks

    @today = Time.now

    @users = User.all

  end






end