class BooksController < ApplicationController
    
 def new
	@book = Book.new
 end

 def creat
	@book = Book.new(book_params)
   
    if @book.save
        # 成功
        redirect_to books_path, notice: "success!"
      else
        # 失敗
        render :new
 end
  
   
   private
    def book_params
      params.require(:book).permit(:name, :introduction, :author, :price)
    end
end