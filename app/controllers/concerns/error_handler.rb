# frozen_string_literal: true

module ErrorHandler
  extend ActiveSupport::Concern

  included do
    rescue_from MissingParameterError, with: :missing_parameter
  end

  private

  def missing_parameter(error)
    response = { message: error.message }
    Rails.logger.error(response)
    render json: response, status: :unprocessable_entity
  end
end
