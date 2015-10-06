class Visita < ActiveRecord::Migration
  def change
  	add_column :visita, :paciente_id, :integer
  	remove_column :visita, :nome 
  end
end
