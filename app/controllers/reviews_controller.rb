class ReviewsController < ApplicationController
    before_action :encontrar_filme
    before_action :encontrar_review, only: [:edit, :update, :destroy]
    before_action :authenticate_user!, only: [:new, :edit]

    def new
        @review = Review.new
        @review.filme_id = @filme.id
        @review.user_id = current_user.id
    end
    
    def show
    end

    def create
        @review = Review.new(review_params)
        @review.filme_id = @filme.id
        @review.user_id = current_user.id

        if @review.save
            redirect_to filme_path(@filme)
        else
            render 'new'
        end 
    end

    def edit
        @review  = Review.find(params[:id])
    end

    def update
        @review  = Review.find(params[:id])
        
        if @review.update(review_params)
            redirect_to filme_path(@filme)
        else
            render 'edit'
        end
    end

    def destroy
        @review.destroy
        redirect_to filme_path(@filme)
    end

    private
        def review_params
            params.require(:review).permit(:nota, :comentario)
        end

        def encontrar_filme
            @filme = Filme.find(params[:filme_id])
        end

        def encontrar_review
            @review = Review.find(params[:id])
        end
end
