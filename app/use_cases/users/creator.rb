# frozen_string_literal: true

module Users
  class Creator
    def perform(user_params)
      User.create!(
        name: user_params[:name],
        email: user_params[:email].downcase,
        password: user_params[:password]
      )
    rescue ActiveRecord::RecordInvalid => e
      raise MissingParameterError, e
    end
  end
end
