class UsersController < ApplicationController

    # Sign-up feature
    def create
        user = User.create!(user_params)
        session[:user_id] = user.id
        render json: user, status: :created
    end

    # Auto-login feature
    def show
        render json: @current_user
    end

    private

    def user_params
        params.permit(:username, :password, :password_confirmation, :image_url, :bio)
    end
end
