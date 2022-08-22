class ClubusersController < ApplicationController

    def create
        clubuser = Clubuser.create!(clubuser_params)
        clubuser.save
        render json: clubuser, status: :created
    end

    def destroy
        clubuser = Clubuser.find(params[:id])
        clubuser.destroy
        header :no_content
    end

    private

    def clubuser_params
        params.permit(:id,:user_id,:bookclub_id)
    end

end