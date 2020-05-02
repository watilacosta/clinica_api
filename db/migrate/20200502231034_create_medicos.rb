class CreateMedicos < ActiveRecord::Migration[6.0]
  def change
    create_table :medicos do |t|
      t.string :nome
      t.string :sobrenome
      t.string :endereco
      t.string :telefone
      t.string :email
      t.string :pis
      t.string :crm
      t.string :ctps
      t.string :cidade
      t.string :uf
      t.references :especialidade, null: false, foreign_key: true
      t.string :password_digest

      t.timestamps
    end
  end
end
