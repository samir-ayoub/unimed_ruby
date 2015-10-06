class CreateMedicos < ActiveRecord::Migration
  def change
    create_table :medicos do |t|
      t.string :nome
      t.string :crm
      t.string :telefone

      t.timestamps null: false
    end
  end
end
