# frozen_string_literal: true

module Api
  module V1
    # Controller de Funcionarios
    class FuncionariosController < Api::V1::ApiController
      before_action :authenticate_funcionario
      before_action :set_funcionario, only: %i[destroy update]

      def index
        @funcionarios = Funcionario.all
        render json: @funcionarios, status: :ok
      end

      def create
        @funcionario = Funcionario.new(funcionario_params)
        if @funcionario.save
          render json: @funcionario, status: :created
        else
          render json: { errors: @funcionario.errors.full_messages }, status: :unprocessable_entity
        end
      end

      def update
        if @funcionario.update(funcionario_params)
          render json: @funcionario, status: :ok
        else
          render json: { errors: @funcionario.errors.full_messages }, status: :unprocessable_entity
        end
      end

      def destroy
        @funcionario.destroy
        render json: { msg: 'Funcionário excluído com sucesso!' } , status: :no_content
      end

      private

      def funcionario_params
        params.require(:funcionario).permit(:nome, :sobrenome, :telefone,
                                             :email, :cargo, :cpf, :ctps, :pis,
                                             :endereco, :cidade, :uf, :password)
      end

      def set_funcionario
        @funcionario = Funcionario.find(params[:id])
      end
    end
  end
end
