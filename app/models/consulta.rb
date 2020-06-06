# frozen_string_literal: true

# == Schema Information
#
# Table name: consultas
#
#  id             :bigint           not null, primary key
#  paciente_id    :bigint           not null
#  medico_id      :bigint           not null
#  funcionario_id :bigint           not null
#  data           :datetime
#  retorno        :boolean
#  obs            :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
class Consulta < ApplicationRecord
  belongs_to :paciente
  belongs_to :medico
  belongs_to :funcionario

  validates :paciente,
            :medico,
            :funcionario,
            :data, presence: true
end
