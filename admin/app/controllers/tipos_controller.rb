class TiposController < ApplicationController

	def index
		@tipos=Tipo.all
	end

	def edit
		@tipo=Tipo.find_by_id(params[:id])
		render :editar
	end

	def show
		@tipo=Tipo.find_by_id(params[:id])
	end

	def update
		tipo = Tipo.find_by_id(params[:id])
    tipo.tipo = params[:tipo]
    tipo.descricao = params[:descricao]
    tipo.save
    redirect_to tipos_path
  end

  def delete
		tipo=Tipo.find_by_id(params[:id])
		tipo.destroy if tipo.present?
    redirect_to tipos_path
  end

  def new
  end

  def criar
		tipo=Tipo.new
		tipo.tipo = params[:tipo]
		tipo.descricao = params[:descricao]
		tipo.save
    redirect_to tipos_path
  end
end
