class ApplicationController < ActionController::Base

    protect_from_forgery with: :exception
    before_action :authenticate_user!
    before_action :check_lang

    private

    def check_lang

        # todo: change lang

    end

end
