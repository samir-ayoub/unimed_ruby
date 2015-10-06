class CreateAssistentes < ActiveRecord::Migration
  def change
    create_table :assistentes do |t|
      t.string :nome
      t.integer :chapa
      t.string :cargo

      t.timestamps null: false
    end
  end
end
