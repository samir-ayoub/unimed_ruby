class CreatePacientes < ActiveRecord::Migration
  def change
    create_table :pacientes do |t|
      t.string :nome
      t.string :sobrenome
      t.string :telefone
      t.string :codigo_identificacao
      t.string :endereco
      t.string :cidade
      t.string :estado

      t.timestamps null: false
    end
  end
end
