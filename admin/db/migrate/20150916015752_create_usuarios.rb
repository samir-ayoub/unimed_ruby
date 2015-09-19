class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.string :nome, limit: 50
      t.string :login, limit: 50, null: false
      t.string :password, limit: 50, null: false

      t.timestamps null: false
    end
  end
end
