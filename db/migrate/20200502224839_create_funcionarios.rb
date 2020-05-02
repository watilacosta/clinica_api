class CreateFuncionarios < ActiveRecord::Migration[6.0]
  def change
    create_table :funcionarios do |t|
      t.string :nome
      t.string :sobrenome
      t.string :telefone
      t.string :email
      t.string :password_digest
      t.integer :cargo
      t.string :cpf
      t.string :ctps
      t.string :pis
      t.string :endereco
      t.string :cidade
      t.string :uf

      t.timestamps
    end

    Funcionario.create!(
      nome: 'Administrador',
      sobrenome: '',
      telefone: '',
      email: '',
      password: 'admin@123',
      cargo: :admin,
      cpf: '',
      ctps: '',
      pis: '',
      endereco: '',
      cidade: '',
      uf: '',
    )
    puts Funcionario.last
  end
end
