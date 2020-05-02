class Consulta < ApplicationRecord
  belongs_to :paciente
  belongs_to :medico
  belongs_to :funcionario
end
