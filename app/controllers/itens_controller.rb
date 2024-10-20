class ItensController < ApplicationController
    def create
      @lista = Lista.find(params[:lista_id])
      @item = @lista.itens.build(item_params)
      if @item.save
        redirect_to root_path, notice: 'Item adicionado!'
      else
        redirect_to root_path, alert: 'Não foi possível adicionar o item.'
      end
    end
  
    def destroy
      @item = Item.find(params[:id])
      @item.destroy
      redirect_to root_path, notice: 'Item excluído!'
    end
  
    private
  
    def item_params
      params.require(:item).permit(:content)
    end
  end
  