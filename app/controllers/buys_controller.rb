class BuysController < ApplicationController
    def pay
        @book = Book.find(params[:id])
       
    end

    def buy
        @user = current_user
        @book = Book.find(params[:id])
        respond_to do |format|
          if @book.update( status: 2)
            # format.js { render nothing: true, notice: "Book was successfully bought." }
            format.html { redirect_to profile_path, notice: "Book was successfully bought." }
            format.json { render :show, status: :ok, location: @book }
          else
            format.html { render :edit, status: :unprocessable_entity }
            format.json { render json: @book.errors, status: :unprocessable_entity }
          end
        end 
    end
end
