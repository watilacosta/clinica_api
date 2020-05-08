module Api
  module V1
    class FuncionariosController < Api::V1::ApiController
      before_action :authenticate_funcionario

      def index
        funcionarios = Funcionario.all
        render json: funcionarios
      end

      def create
        funcionario = Funcionario.new(funcionario_params)

        if funcionario.save
          render json: funcionario, status: :created
        else
          render json: { errors: funcionario.errors.full_messages }, status: :unprocessable_entity
        end
      end

      private

      def funcionario_params
        params.require(:funcionarios).permit(:nome, :sobrenome, :telefone, 
                                             :email, :cargo, :cpf, :ctps, :pis, 
                                             :endereco, :cidade, :uf, :password)
      end
    end
  end
end