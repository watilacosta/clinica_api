module Api
  module V1
    class FuncionariosController < Api::V1::ApiController
      before_action :authenticate_funcionario

      def index
        @funcionarios = Funcionario.all
        render json: @funcionarios
      end

      private

      def funcionario_params
        params.require(:funcionarios).permit(:id, :nome, :sobrenome, :telefone, 
                                             :email, :cargo, :cpf, :ctps, :pis, 
                                             :endereco, :cidade, :uf)
      end
    end
  end
end