class CreatePacientes < ActiveRecord::Migration[6.0]
  def change
    create_table :pacientes do |t|
      t.string :nome
      t.string :sobrenome
      t.string :endereco
      t.string :cidade
      t.string :uf
      t.string :telefone
      t.string :cpf
      t.string :rg
      t.string :orgao_emissor
      t.date :dt_nasc
      t.integer :sexo

      t.timestamps
    end
  end
end
