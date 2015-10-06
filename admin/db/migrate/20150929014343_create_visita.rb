class CreateVisita < ActiveRecord::Migration
  def change
    create_table :visita do |t|
      t.string :nome
      t.string :endereco
      t.datetime :dia
      t.integer :hora
      t.string :descricao

      t.timestamps null: false
    end
  end
end
