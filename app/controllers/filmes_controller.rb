class FilmesController < ApplicationController
    before_action :find_filme, only: [:show, :edit, :update, :destroy]

    def index
       @filmes = Filme.all.order('created_at DESC')
    end

    def show
    end

    def new
        @filme = Filme.new
    end

    def create
        @filme = Filme.new(filme_params)

        if @filme.save 
            redirect_to root_path
        else
            render 'new'
        end
    end

    def edit
    end

    def update
        if @filme.update(filme_params)
            redirect_to filme_path(@filme)
        else 
            render 'edit'
        end
    end

    def destroy
        @filme.destroy
        respond_to do |format|
          format.html { redirect_to filmes_url, notice: "Filme removido com sucesso" }
          format.json { head :no_content }
        end
      end

    private
        def filme_params
            params.require(:filme).permit(:titulo, :sinopse, :ano, :genero, :url_capa)
        end

        def find_filme
            @filme = Filme.find(params[:id])
        end
end
