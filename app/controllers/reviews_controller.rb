class ReviewsController < ApplicationController
    skip_before_action :authorize, only: :find_all_book_reviews
    
    def index
        @reviews = Review.all
        render json: @reviews
    end

    def update
        review = Review.find_by(params[:id])
        review.update!(review_params)
        render json: review
    end

    def create
        review = Review.create!(review_params)
        review.save
        render json: review, status: :created
    end

    def destroy
        review = Review.all.find{|rev| rev.id == params[:id]}
        review.destroy
        head :no_content
    end

    def delete_review
        review = Review.all.find{|rev| rev.id == params[:id]}
        review.destroy
        head :no_content
    end

    def find_all_book_reviews
        reviews = Review.all.find_all{|rev| rev.book_id == params[:book_id]}
        render json: reviews, include: ["reactions.user.username","user"]
    end

    private

    def review_params
        params.permit(:id,:rating,:date,:text,:book_id,:user_id)
    end

end