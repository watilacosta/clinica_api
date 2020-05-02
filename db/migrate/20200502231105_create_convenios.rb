class CreateConvenios < ActiveRecord::Migration[6.0]
  def change
    create_table :convenios do |t|
      t.string :empresa
      t.string :cnpj
      t.string :endereco
      t.string :cidade
      t.string :uf
      t.string :telefone
      t.string :email

      t.timestamps
    end
  end
end
