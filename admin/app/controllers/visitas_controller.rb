class VisitasController < ApplicationController
  def index
    @visitas=Visita.all
  end

  def new
  end

  def criar
    visita=Visita.new
    visita.paciente.nome = params[:nome]
    visita.endereco = params[:endereco]
    visita.dia = params[:dia]
    visita.hora = params[:hora]
    visita.descricao = params[:descricao]
    visita.save
    redirect_to visita_index_path
  end
  
  def edit
    @visita=Visita.find_by_id(params[:id])
    render :editar
  end

  def update
    visita=Visita.find_by_id(params[:id])
    visita.paciente_id = params[:paciente_id]
    visita.endereco = params[:endereco]
    visita.dia = params[:dia]
    visita.hora = params[:hora]
    visita.descricao = params[:descricao]
    visita.save
    redirect_to visita_index_path
  end

  def delete
    visita=Visita.find_by_id(params[:id])
    visita.destroy if visita.present?
    redirect_to visita_index_path
  end

  def show
    @visita=Visita.find_by_id(params[:id])
  end

end
