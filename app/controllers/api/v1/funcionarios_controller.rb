class Api::V1::FuncionariosController < ApplicationController
  before_action :authenticate_funcionario
end
