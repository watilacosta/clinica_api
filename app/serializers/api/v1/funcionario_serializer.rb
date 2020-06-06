# frozen_string_literal: true

module Api
  module V1
    # Serializer Funcionarios
    class FuncionarioSerializer < ActiveModel::Serializer
      attributes :id, :nome, :sobrenome, :telefone, :email, :cargo,
                 :cpf, :ctps, :pis, :endereco, :cidade, :uf

      has_many :consultas
    end
  end
end
