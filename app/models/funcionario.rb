# frozen_string_literal: true

# == Schema Information
#
# Table name: funcionarios
#
#  id              :bigint           not null, primary key
#  nome            :string
#  sobrenome       :string
#  telefone        :string
#  email           :string
#  password_digest :string
#  cargo           :integer
#  cpf             :string
#  ctps            :string
#  pis             :string
#  endereco        :string
#  cidade          :string
#  uf              :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
class Funcionario < ApplicationRecord
  has_many :consultas, dependent: :nullify

  before_validation(on: :create) do
    self.password = '123456'
  end

  has_secure_password

  enum cargo: {
    medico: 0,
    admin: 1,
    recepcionista: 2
  }

  validates :nome, :sobrenome, :telefone, :email, :cargo,
            :cpf, :ctps, :pis, :endereco, :cidade, :uf,
            length: { maximum: 200 }
end
