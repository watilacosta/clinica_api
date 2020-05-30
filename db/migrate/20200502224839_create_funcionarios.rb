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
      nome: 'Wátila',
      sobrenome: 'Costa',
      telefone: '85981704508',
      email: 'watilafreire26@gmail.com',
      password: '123456',
      cargo: :admin,
      cpf: '02905626356',
      ctps: '',
      pis: '',
      endereco: 'Rua Prof. Heribaldo Costa, 591 - Centro',
      cidade: 'Fortaleza',
      uf: 'CE',
    )
    puts Funcionario.last
  end
end
