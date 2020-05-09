# == Schema Information
#
# Table name: medicos
#
#  id               :bigint           not null, primary key
#  nome             :string
#  sobrenome        :string
#  endereco         :string
#  telefone         :string
#  email            :string
#  pis              :string
#  crm              :string
#  ctps             :string
#  cidade           :string
#  uf               :string
#  especialidade_id :bigint           not null
#  password_digest  :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#
class Medico < ApplicationRecord
  belongs_to :especialidade

  validates :nome, 
            :sobrenome, 
            :endereco, 
            :email, 
            :ctps, 
            :cidade, 
            :uf, 
            :especialidade, 
            :crm, presence: true
end
