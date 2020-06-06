# frozen_string_literal: true

module Api
  module V1
    # Default Api Controller
    class ApiController < ApplicationController
      include Knock::Authenticable
      include CanCan::ControllerAdditions

      serialization_scope :current_funcionario

      rescue_from ActiveRecord::RecordNotFound do |msg|
        render(json: { message: msg }, status: :not_found)
      end

      rescue_from ActionController::ParameterMissing do |exception|
        render(json: { message: exception.param }, status: :bad_request)
      end

      rescue_from CanCan::AccessDenied do |msg|
        render(json: { message: msg }, status: :forbidden)
      end
    end
  end
end