class ReactionsController < ApplicationController

    def create
        reaction = Reaction.create!(reaction_params)
        reaction.save
        render json: reaction, status: :created
    end

    def remove_reaction
        reaction = Reaction.find{|r| r.emoji == params[:emoji] && r.user_id == params[:user_id] && r.review_id == params[:review_id]}
        reaction.destroy
        render json: reaction
    end

    private 

    def reaction_params
        params.permit(:id,:emoji,:review_id,:user_id)
    end
end