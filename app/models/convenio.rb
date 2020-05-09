# == Schema Information
#
# Table name: convenios
#
#  id         :bigint           not null, primary key
#  empresa    :string
#  cnpj       :string
#  endereco   :string
#  cidade     :string
#  uf         :string
#  telefone   :string
#  email      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Convenio < ApplicationRecord
  validates :empresa, 
            :cnpj, 
            :endereco, 
            :cidade, 
            :uf, 
            :email, presence: true
end
