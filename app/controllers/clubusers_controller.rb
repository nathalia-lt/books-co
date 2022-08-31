class ClubusersController < ApplicationController

    def user_clubusers
        render json: @current_user.clubusers
    end

    def create
        clubuser = Clubuser.create!(clubuser_params)
        clubuser.save
        render json: clubuser, status: :created
    end

    def destroy
        clubuser = Clubuser.find(params[:id])
        clubuser.destroy
        render json: clubuser
    end

    private

    def clubuser_params
        params.permit(:id,:user_id,:bookclub_id)
    end

end