class HomeController < ApplicationController
    before_action :authenticate_user!

    user_signed_in?

    current_user

    user_sessions



    def index
    end

    def show
    end

end
