# frozen_string_literal: true

# Permissoes
class Ability
  include CanCan::Ability

  def initialize(funcionario)
    funcionario ||= Funcionario.new

    if funcionario.admin?
      can :manage, :all
    else
      can :read, Funcionario
    end
  end
end
