class Usuarios < ActiveRecord::Migration
  def change
  	add_column :usuarios, :email, :string
  end
end
