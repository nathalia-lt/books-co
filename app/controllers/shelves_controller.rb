class ShelvesController < ApplicationController
    # skip_before_action :authorize

    def user_shelves
        render json: @current_user.shelves
    end

    def add_book
        bookToAdd = params[:book]
        shelf = Shelf.find(params[:shelf_id])
        books = shelf.books
        if books.map{|book| book['id']}.include?(bookToAdd['id'])
            msg = 'This book is already in this list.'
            render json: msg
        else
        books << bookToAdd
        shelf.update!(books: books)
        render json: shelf
        end 
    end

    def remove_book
        bookToRemove = params[:book_id]
        shelf = Shelf.find(params[:shelf_id])
        books = shelf.books
        newBooks = books.filter{|book| book['id'] != bookToRemove}
        shelf.update!(books: newBooks)
        render json: shelf
    end

    def find_user_shelves
        username = params[:username]
        user = User.find_by(username: username)
        render json: user.shelves
      end

    def create
        shelf = Shelf.create!(shelf_params)
        shelf.save
        render json: shelf, status: :created
    end

    def destroy
        shelf = Shelf.find(params[:id])
        shelf.destroy
        render json: shelf
    end

    private

    def shelf_params
        params.permit(:id,:name,:books,:user_id)
    end

end