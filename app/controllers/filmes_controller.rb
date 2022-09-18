class FilmesController < ApplicationController
    before_action :find_filme, only: [:show, :edit, :update, :destroy]

    def index
       @filmes = Filme.all.order('created_at DESC')
    end

    def show
    end

    def new
        @filme = current_user.filmes.build
        @generos = Genero.all.map{ |g| [g.nome, g.id] }
    end

    def create
        @filme = current_user.filmes.build(filme_params)
        @filme.id_genero = params[:id_genero]

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
            params.require(:filme).permit(:titulo, :sinopse, :ano, :url_capa, :id_genero)
        end

        def find_filme
            @filme = Filme.find(params[:id])
        end
end
