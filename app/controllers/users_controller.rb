class UsersController < ApplicationController
    skip_before_action :authorize, only: :create
  
    def index
      @users = User.all
      render json: @users
    end
  
    def update
      @current_user.update!(user_params)
      render json: @current_user
    end
  
    def create
      user = User.create!(user_params)
      session[:user_id] = user.id
      Shelf.create!([
        {
          user_id: user.id,
          name: "Read",
        },
        {
          user_id: user.id,
          name: "Currently Reading",
        },
        {
          user_id: user.id,
          name: "To Be Read",
        },
        {
          user_id: user.id,
          name: "Did Not Finish",
        },
      ])
      render json: user, status: :created
    end
  
    def show
      render json: @current_user, include: ["clubusers.bookclub"], status: :ok
    end
  
    def destroy
      user = @user
      user.destroy
      head :no_content
    end
  
    def add_to_current
      bookToAdd = params[:book]
      userCurrent = @current_user.current
      if userCurrent.map { |book| book["id"] }.include?(bookToAdd["id"])
        msg = "This book is already in your list."
        render json: msg
      else
        userCurrent << bookToAdd
        @current_user.update!(current: userCurrent)
        render json: @current_user
      end
    end
  
    def remove_from_current
      bookToRemove = params[:id]
      userCurrent = @current_user.current.filter { |book| book["id"] != bookToRemove }
      @current_user.update!(current: userCurrent)
      render json: @current_user
    end
  
    private
  
    def set_user
      @user = User.find(params[:id])
    end
  
    def user_params
      params.permit(
        :id,
        :username,
        :first_name,
        :last_name,
        :password,
        :password_confirmation,
      )
    end
  end