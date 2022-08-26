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

    # def update_status
    #     user = User.find(params[:user_id])
    #     book = params[:book]
    #     bookToRemove = book['id']
    #     for shelf in user.shelves.slice(0,4)
    #         if (shelf.id == params[:shelf_id])
    #             books = shelf.books
    #             books << books
    #             shelf.update!(books:books)
    #         else 
    #             books = shelf.books
    #             newBooks = books.filter{|book| book['id'] != bookToRemove}
    #             shelf.update!(books: newBooks)
    #         end
    #     end

    #     render json: book
    # end

    # def clear_status
    #     user = User.find(params[:user_id])
    #     bookToRemove = params[:id]
    #     for shelf in user.shelves.slice(0,4)
    #         books = shelf.books
    #         newBooks = books.filter{|book| book['id'] != bookToRemove}
    #         shelf.update!(books: newBooks)
    #     end
    #     render json: user.shelves
    # end

    def create
        shelf = Shelf.create!(shelf_params)
        shelf.save
        render json: shelf, status: :created
    end

    def destroy
        shelf = Shelf.find_by(params[:id])
        shelf.destroy
        render json: shelf
    end

    private

    def shelf_params
        params.permit(:id,:name,:books,:user_id)
    end

end