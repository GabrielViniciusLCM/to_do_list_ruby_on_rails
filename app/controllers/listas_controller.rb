class ListasController < ApplicationController
    def index
      @listas = Lista.all
    end
  
    def new
      @lista = Lista.new
    end
  
    def create
      @lista = Lista.new(lista_params)
      if @lista.save
        redirect_to root_path, notice: 'Lista criada com sucesso!'
      else
        render :new
      end
    end
  
    def destroy
      @lista = Lista.find(params[:id])
      @lista.destroy
      redirect_to root_path, notice: 'Lista excluída!'
    end
  
    private
  
    def lista_params
      params.require(:lista).permit(:title)
    end
  end
  