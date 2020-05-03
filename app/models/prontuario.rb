# == Schema Information
#
# Table name: prontuarios
#
#  id          :bigint           not null, primary key
#  consulta_id :bigint           not null
#  historico   :text
#  receituario :text
#  exames      :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Prontuario < ApplicationRecord
  belongs_to :consulta
end
