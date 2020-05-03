class Api::V1::FuncionarioSerializer < ActiveModel::Serializer
  attributes :id, :nome, :sobrenome, :telefone, :email, :cargo,
             :cpf, :ctps, :pis, :endereco, :cidade, :uf

  has_many :consultas
end
