# frozen_string_literal: true

# == Schema Information
#
# Table name: especialidades
#
#  id         :bigint           not null, primary key
#  descricao  :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Especialidade < ApplicationRecord
  validates :descricao, presence: true
end
