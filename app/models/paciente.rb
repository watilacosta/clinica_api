# == Schema Information
#
# Table name: pacientes
#
#  id            :bigint           not null, primary key
#  nome          :string
#  sobrenome     :string
#  endereco      :string
#  cidade        :string
#  uf            :string
#  telefone      :string
#  cpf           :string
#  rg            :string
#  orgao_emissor :string
#  dt_nasc       :date
#  sexo          :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
class Paciente < ApplicationRecord
end
