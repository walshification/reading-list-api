class Api::V1::BooksController < ApplicationController
  # before_action :restrict_access

  def index
    @books = Book.all
  end

  def show
    @book = Book.find_by(id: params[:id]) 
  end

  private

  def book_params
    params.require(:book).permit(:title, :blurb, :author_id, :published_year, :status)
  end

  def restrict_access
    authenticate_or_request_with_http_token do |api_key, options|
      User.find_by(:email => request.headers["X-User-Email"], :api_key => api_key)
    end
  end
end
