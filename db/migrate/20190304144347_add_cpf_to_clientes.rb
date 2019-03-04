class AddCpfToClientes < ActiveRecord::Migration[5.0]
  def change
    add_column :clientes, :cpf, :string
  end
end
