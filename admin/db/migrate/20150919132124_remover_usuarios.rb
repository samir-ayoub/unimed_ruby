class RemoverUsuarios < ActiveRecord::Migration
  def change
  	remove_column :usuarios, :email
  end
end
