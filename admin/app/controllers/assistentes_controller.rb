class AssistentesController < ApplicationController
  def index
    @assistentes=Assistente.all
  end

  def new
  end


def criar
    assistente=Assistente.new
    assistente.nome = params[:nome]
    assistente.chapa = params[:chapa]
    assistente.cargo = params[:cargo]
    assistente.save
    redirect_to assistente_index_path
  end

  def show
    @assistente=Assistente.find_by_id(params[:id])
  end

  def edit
    @assistente=Assistente.find_by_id(params[:id])
    render :edit
  end

  def update
    assistente=Assistente.find_by_id(params[:id])
    assistente.nome = params[:nome]
    assistente.chapa = params[:chapa]
    assistente.cargo = params[:cargo]
    assistente.save
    redirect_to assistente_index_path
  end

  def delete
    assistente=Assistente.find_by_id(params[:id])
    assistente.destroy if assistente.present?
    redirect_to assistente_index_path
  end

end  

